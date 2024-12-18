import 'package:cip_loreto/features/home/data/college_model.dart';
import 'package:cip_loreto/features/home/presentation/widgest/home_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

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
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ListTile(
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
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            'Fecha de Pago: ${payment.fechaPago.toLocal().toString().split(' ')[0]}'),
                        if (estado == "Pagado")
                          TextButton(
                            onPressed: () => _downloadPdf(context),
                            child: const Row(
                              children: [
                                Icon(Icons.download),
                                SizedBox(width: 8),
                                Text('Descargar Boleta'),
                              ],
                            ),
                          ),
                      ],
                    ),
                    trailing: Text(
                      estado,
                      style: TextStyle(
                        color: estado == "Pagado" ? Colors.green : Colors.red,
                      ),
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

Future<void> _downloadPdf(BuildContext context) async {
  final pdf = pw.Document();
  final data = await rootBundle.load('assets/doc/boleta.pdf');
  final bytes = data.buffer.asUint8List();

  pdf.addPage(pw.Page(
    build: (pw.Context context) {
      return pw.Center(
        child: pw.Image(pw.MemoryImage(bytes)),
      );
    },
  ));

  await Printing.layoutPdf(onLayout: (format) async => pdf.save());
}
