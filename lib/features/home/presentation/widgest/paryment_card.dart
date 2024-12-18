import 'package:cip_loreto/features/home/data/college_model.dart';
import 'package:cip_loreto/features/home/presentation/widgest/home_title.dart';
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
            const HomeTitle(
              title: 'Detalle de Pagos:',
            ),
            const SizedBox(height: 8),
            Column(
              children: payments.map((payment) {
                final estado = payment.estado ?? "Pendiente";
                return ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Cuota ${payments.toList().indexOf(payment) + 1}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          fontSize: 14,
                        ),
                      ),
                      Text('Monto: ${payment.monto}'),
                    ],
                  ),
                  subtitle: Text(
                      'Fecha de Pago: ${payment.fechaPago.toLocal().toString().split(' ')[0]}'),
                  trailing: Text(
                    estado,
                    style: TextStyle(
                      color: estado == "Pagado" ? Colors.green : Colors.red,
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
