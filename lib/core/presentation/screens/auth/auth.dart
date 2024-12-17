import 'package:cip_loreto/core/providers/auth_provider.dart';
import 'package:cip_loreto/features/home/data/college_model.dart';
import 'package:cip_loreto/features/home/domain/fetch_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_ui/flutter_app_ui.dart';
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
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/icon/icon.png',
              width: 40,
              height: 40,
            ),
            space16,
            Text(
              'CIP Loreto',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(),
            ),
          ],
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icon/icon.png',
                        width: 100,
                        height: 100,
                      ),
                      gap16,
                      Text(
                        'CIP Loreto',
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      gap16,
                      Text(
                        'Bienvenido, por favor ingresa tus datos.',
                        textAlign: TextAlign.center,
                        style:
                            Theme.of(context).textTheme.bodyLarge!.copyWith(),
                      ),
                    ],
                  ),
                ),
                gap24,
                TextField(
                  controller: dniController,
                  decoration: InputDecoration(
                    labelText: 'DNI',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                  keyboardType: TextInputType.number,
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: cipController,
                  decoration: InputDecoration(
                    labelText: 'CIP',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                  keyboardType: TextInputType.number,
                  style: const TextStyle(fontSize: 16),
                ),
                gap24,
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => _login(context, ref),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).primaryColor,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    child: const Text(
                      'Iniciar sesión',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
