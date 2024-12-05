import 'package:cip_loreto/features/home/data/college_model.dart';
import 'package:flutter/material.dart';

class PaymentDetailWidget extends StatelessWidget {
  const PaymentDetailWidget({super.key, required this.payments});
  final Iterable<Pago> payments;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            for (var payment in payments) ...[
              // Cuota y monto
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Cuota ${payments.toList().indexOf(payment) + 1}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "Monto: s/. ${payment.monto.toStringAsFixed(2)}",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              // Fecha de pago
              Text(
                'Fecha Pago | ${payment.fechaPago.toLocal().toString().split(' ')[0]}',
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 8),
            ],
            const SizedBox(height: 8),
            // Línea divisora
            const Divider(
              color: Colors.red,
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }
}
