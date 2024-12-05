import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          'assets/images/logocip.png',
          width: 20,
          height: 20,
        ),
      ),
      title: const Column(
        children: [
          Text(
            'Colegio de Ingenieros del Perú',
          ),
          Text(
            'Consejo Departamental de Loreto',
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
