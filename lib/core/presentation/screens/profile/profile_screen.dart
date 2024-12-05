import 'package:cip_loreto/core/providers/auth_provider.dart';
import 'package:cip_loreto/features/home/presentation/widgest/home_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_ui/flutter_app_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

const secureStorage = FlutterSecureStorage();

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
  String name = '';
  String cip = '';

  @override
  void initState() {
    super.initState();
    _loadUserData();
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
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    cip,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // Avatar
                const CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.orange,
                  child: Icon(
                    Icons.person,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          // Opciones del menú
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: const Icon(Icons.person_outline),
                  title: const Text(
                    'Datos personales',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    // Acción al seleccionar
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.badge_outlined),
                  title: const Text(
                    'Datos CIP',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    // Acción al seleccionar
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.school_outlined),
                  title: const Text(
                    'Estudios',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    // Acción al seleccionar
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text(
                    'Cerrar sesión',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    _logout(context);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _logout(BuildContext context) async {
    await secureStorage.deleteAll(); // Limpia los datos almacenados
    ref
        .read(authProvider.notifier)
        .logout(); // Cambia el estado de autenticación
    // ignore: use_build_context_synchronously
    Navigator.pushReplacementNamed(context, '/login'); // Redirige al login
  }
}
