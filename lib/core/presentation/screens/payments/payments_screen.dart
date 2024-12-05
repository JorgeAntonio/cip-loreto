import 'package:cip_loreto/features/home/presentation/widgest/home_app_bar.dart';
import 'package:cip_loreto/features/home/presentation/widgest/paryment_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_ui/flutter_app_ui.dart';

class PaymentsScreen extends StatelessWidget {
  const PaymentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final myProducts = List<String>.generate(20, (i) => 'Product $i');
    return FlutterAppBaseScreen(
      appBar: const HomeAppBar(),
      body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: myProducts.length,
          itemBuilder: (context, index) {
            return const PaymentDetailWidget();
          }),
    );
  }
}
