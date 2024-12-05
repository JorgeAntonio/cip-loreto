import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppBottomNavigation extends StatelessWidget {
  const AppBottomNavigation({
    super.key,
    required this.currentIndex,
    required this.onDestinationSelected,
  });

  final int currentIndex;
  final void Function(int)? onDestinationSelected;

  void onItemTapped(BuildContext context, int index) {
    // GoRouter.of(context).go('/home/$index');
    switch (index) {
      case 0:
        GoRouter.of(context).go('/home/0');
        break;
      case 1:
        GoRouter.of(context).go('/home/1');
        break;
      case 2:
        GoRouter.of(context).go('/home/2');
        break;
      default:
        GoRouter.of(context).go('/home/0');
    }
  }

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: currentIndex,
      elevation: 0.0,
      onDestinationSelected: (value) => onDestinationSelected?.call(value),
      destinations: const [
        NavigationDestination(
          selectedIcon: Icon(Icons.people),
          icon: Icon(Icons.people_outline),
          label: 'Colegiados',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.payment),
          icon: Icon(Icons.payment_outlined),
          label: 'Pagos',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.person),
          icon: Icon(Icons.person_outline),
          label: 'Perfil',
        ),
      ],
    );
  }
}
