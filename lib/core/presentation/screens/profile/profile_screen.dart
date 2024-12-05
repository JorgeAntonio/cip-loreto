import 'package:cip_loreto/features/home/presentation/widgest/home_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_ui/flutter_app_ui.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
            child: const Row(
              children: [
                // Texto de saludo
                Expanded(
                  child: Text(
                    'José Pérez',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // Avatar
                CircleAvatar(
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
                    // Acción al cerrar sesión
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
