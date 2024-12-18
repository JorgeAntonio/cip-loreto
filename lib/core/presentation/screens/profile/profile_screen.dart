import 'package:cip_loreto/core/providers/auth_provider.dart';
import 'package:go_router/go_router.dart';
import 'package:cip_loreto/features/home/data/college_model.dart';
import 'package:cip_loreto/features/home/domain/fetch_data.dart';
import 'package:cip_loreto/features/home/presentation/widgest/home_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_ui/flutter_app_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:logger/logger.dart';

const secureStorage = FlutterSecureStorage();

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
  String name = '';
  String cip = '';
  List<Colegiado> allColegiados = [];
  List<Colegiado> filteredColegiados = [];

  @override
  void initState() {
    super.initState();
    loadData();
    _loadUserData();
    _loadAndFilterByCip();
  }

  Future<void> loadData() async {
    try {
      final colegiados = await loadColegiados();
      setState(() {
        allColegiados = colegiados;
        filteredColegiados = colegiados;
      });
    } catch (e) {
      Logger().e('Error al cargar los colegiados: $e');
    }
  }

  Future<void> _loadAndFilterByCip() async {
    try {
      final cip = await secureStorage.read(key: 'cip');
      if (cip != null) {
        filterOneAccordingToColegiatura(cip);
      } else {
        Logger().w('No se encontró el CIP en el almacenamiento seguro.');
      }
    } catch (e) {
      Logger().e('Error al leer el CIP del almacenamiento seguro: $e');
    }
  }

  Future<void> _loadUserData() async {
    final storedName =
        await secureStorage.read(key: 'name') ?? 'Nombre no disponible';
    final storedCip =
        await secureStorage.read(key: 'cip') ?? 'CIP no disponible';
    setState(() {
      name = storedName;
      cip = storedCip;
    });
  }

  void filterOneAccordingToColegiatura(String colegiatura) {
    setState(() {
      final colegiado = allColegiados.firstWhere(
        (c) => c.colegiatura.toString() == colegiatura,
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

      filteredColegiados = colegiado.item != 0 ? [colegiado] : [];
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlutterAppBaseScreen(
      appBar: const HomeAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Encabezado con fondo rojo y avatar
          Container(
            color: Colors.red,
            child: Row(
              children: [
                Expanded(
                  child: ListTile(
                    leading: const Icon(Icons.badge, color: Colors.white),
                    title: Text(
                      cip.isNotEmpty ? cip : 'Cargando...',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: const Text('CIP',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
                // Avatar
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.orange,
                    child: Icon(
                      Icons.person,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Opciones del menú
          Expanded(
            child: filteredColegiados.isNotEmpty
                ? ListView(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.account_circle),
                        title: Text(filteredColegiados[0].apellidoPaterno),
                        subtitle: const Text('Apellido Paterno'),
                      ),
                      ListTile(
                        leading: const Icon(Icons.account_circle),
                        title: Text(filteredColegiados[0].apellidoMaterno),
                        subtitle: const Text('Apellido Materno'),
                      ),
                      ListTile(
                        leading: const Icon(Icons.account_circle),
                        title: Text(filteredColegiados[0].nombres),
                        subtitle: const Text('Nombres'),
                      ),
                      ListTile(
                        leading: const Icon(Icons.email),
                        title: Text(filteredColegiados[0].correo),
                        subtitle: const Text('Correo'),
                      ),
                      ListTile(
                        leading: const Icon(Icons.document_scanner),
                        title: Text(filteredColegiados[0].numeroDocumento),
                        subtitle: const Text('Número de Documento'),
                      ),
                      ListTile(
                        leading: const Icon(Icons.home),
                        title: Text(filteredColegiados[0].consejoDepartamental),
                        subtitle: const Text('Consejo Departamental'),
                      ),
                      ListTile(
                        leading: const Icon(Icons.account_balance),
                        title: Text(filteredColegiados[0].capitulo),
                        subtitle: const Text('Especialidad'),
                      ),
                      ListTile(
                        leading: const Icon(Icons.account_balance),
                        title: Text(filteredColegiados[0].tipoColegiado),
                        subtitle: const Text('Tipo de Colegiado'),
                      ),
                      // Botón de cerrar sesión
                      ListTile(
                        leading: const Icon(Icons.logout),
                        title: const Text('Cerrar Sesión'),
                        onTap: () => _logout(context),
                      ),
                      gap32,
                    ],
                  )
                : const Center(
                    child: CircularProgressIndicator(),
                  ),
          ),
        ],
      ),
    );
  }

  Future<void> _logout(BuildContext context) async {
    final shouldLogout = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Confirmar Cierre de Sesión'),
        content: const Text('¿Estás seguro de que deseas cerrar sesión?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Cancelar', style: TextStyle(color: Colors.red)),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('Cerrar Sesión'),
          ),
        ],
      ),
    );

    if (shouldLogout == true) {
      await secureStorage.deleteAll();
      ref.read(authProvider.notifier).logout();
      // ignore: use_build_context_synchronously
      context.goNamed('/login');
    }
  }
}
