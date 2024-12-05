import 'package:cip_loreto/features/home/presentation/widgest/event_card.dart';
import 'package:cip_loreto/features/home/presentation/widgest/home_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_ui/flutter_app_ui.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static Widget builder(BuildContext _, GoRouterState __) {
    return const HomeScreen();
  }

  @override
  Widget build(BuildContext context) {
    final myProducts = List<String>.generate(20, (i) => 'Product $i');
    return FlutterAppBaseScreen(
      appBar: const HomeAppBar(),
      body: ListView.builder(
          itemCount: myProducts.length,
          itemBuilder: (context, index) {
            return const EventCard();
          }),
    );
  }
}
