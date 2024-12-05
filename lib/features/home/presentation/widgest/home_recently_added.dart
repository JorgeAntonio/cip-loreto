import 'package:cip_loreto/features/home/presentation/widgest/home_carrousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_ui/flutter_app_ui.dart';

class HomeEventsList extends StatelessWidget {
  const HomeEventsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: edgeInsetsH20,
            child: Text(
              'Añadidas recientemente',
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
          gap24,
          const HomeCarrousel()
        ],
      ),
    );
  }
}
