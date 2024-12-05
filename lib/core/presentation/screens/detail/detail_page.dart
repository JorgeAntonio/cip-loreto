import 'package:cip_loreto/features/home/data/college_model.dart';
import 'package:flutter/material.dart';

class ColegiadoDetailScreen extends StatelessWidget {
  final Colegiado colegiado;

  const ColegiadoDetailScreen({super.key, required this.colegiado});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${colegiado.nombres} ${colegiado.apellidoPaterno}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                'Nombre: ${colegiado.nombres} ${colegiado.apellidoPaterno} ${colegiado.apellidoMaterno}'),
            Text('Capítulo: ${colegiado.capitulo}'),
            Text('Correo: ${colegiado.correo}'),
            Text('Celular: ${colegiado.celular ?? 'No disponible'}'),
            Text('Tipo de Colegiado: ${colegiado.tipoColegiado}'),
            Text('Consejo Departamental: ${colegiado.consejoDepartamental}'),
            const SizedBox(height: 20),
            Text('Pagos:'),
            colegiado.pagos != null && colegiado.pagos!.isNotEmpty
                ? Column(
                    children: colegiado.pagos!.entries.map((entry) {
                      final pago = entry.value;
                      return ListTile(
                        title: Text('Monto: ${pago.monto}'),
                        subtitle:
                            Text('Fecha de pago: ${pago.fechaPago.toLocal()}'),
                      );
                    }).toList(),
                  )
                : const Text('No hay pagos registrados.'),
          ],
        ),
      ),
    );
  }
}
