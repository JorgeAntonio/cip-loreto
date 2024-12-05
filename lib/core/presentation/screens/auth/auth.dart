import 'package:cip_loreto/core/providers/auth_provider.dart';
import 'package:cip_loreto/features/home/data/college_model.dart';
import 'package:cip_loreto/features/home/domain/fetch_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final TextEditingController dniController = TextEditingController();
  final TextEditingController cipController = TextEditingController();
  final FlutterSecureStorage secureStorage = const FlutterSecureStorage();

  List<Colegiado> allColegiados = [];

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    try {
      final colegiados = await loadColegiados();
      setState(() {
        allColegiados = colegiados;
      });
    } catch (e) {
      print('Error al cargar los datos: $e');
    }
  }

  Future<void> _login(BuildContext context, WidgetRef ref) async {
    final dni = dniController.text.trim();
    final cip = cipController.text.trim();

    final colegiado = allColegiados.firstWhere(
      (c) => c.numeroDocumento == dni && c.colegiatura.toString() == cip,
      orElse: () => Colegiado(
        item: 0,
        apellidoPaterno: '',
        apellidoMaterno: '',
        nombres: '',
        colegiatura: 0,
        tipoDocumento: 0,
        numeroDocumento: '',
        codigoCapitulo: 0,
        capitulo: '',
        correo: '',
        codigoPais: 0,
        tipoColegiado: '',
        consejoDepartamental: '',
      ),
    );

    if (colegiado.item != 0) {
      await secureStorage.write(key: 'cip', value: cip); // Almacenar el CIP
      ref.read(authProvider.notifier).login(); // Cambiar estado a autenticado
      // ignore: use_build_context_synchronously
      context.go('/home/0'); // Redirigir a la pantalla principal
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Error'),
          content: const Text('DNI o CIP incorrectos.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cerrar'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Iniciar sesión')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: dniController,
              decoration: const InputDecoration(labelText: 'DNI'),
            ),
            TextField(
              controller: cipController,
              decoration: const InputDecoration(labelText: 'CIP'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _login(context, ref),
              child: const Text('Iniciar sesión'),
            ),
          ],
        ),
      ),
    );
  }
}
