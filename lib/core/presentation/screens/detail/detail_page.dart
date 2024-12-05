import 'package:cip_loreto/features/home/data/college_model.dart';
import 'package:cip_loreto/features/home/presentation/widgest/home_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_ui/flutter_app_ui.dart';

class ColegiadoDetailScreen extends StatelessWidget {
  final Colegiado colegiado;

  const ColegiadoDetailScreen({super.key, required this.colegiado});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(CupertinoIcons.back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Detalle del Colegiado',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTitle(
                title: 'Información del Colegiado',
              ),
              gap16,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'CIP: ${colegiado.item}',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Text(
                        'DNI: ${colegiado.numeroDocumento}',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  gap16,
                  Text(
                    'Nombre:',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    '${colegiado.nombres} ${colegiado.apellidoPaterno} ${colegiado.apellidoMaterno}',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  gap16,
                  const Text(
                    'Capítulo:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    colegiado.capitulo,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  gap16,
                  const Text(
                    'Tipo de Colegiado:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    colegiado.tipoColegiado,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  gap16,
                  const Text(
                    'Correo y Celular:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Correo: ${colegiado.correo}',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    'Celular: ${colegiado.celular ?? 'No disponible'}',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              gap16,
              const Divider(),
              gap16,
              Text('Pagos:', style: Theme.of(context).textTheme.titleMedium),
              gap16,
              colegiado.pagos != null && colegiado.pagos!.isNotEmpty
                  ? SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.7,
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemCount: colegiado.pagos!.length,
                        itemBuilder: (context, index) {
                          final entry =
                              colegiado.pagos!.entries.elementAt(index);
                          final pago = entry.value;
                          return Column(
                            children: [
                              Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                elevation: 1,
                                child: ListTile(
                                  title: Text('Monto: s/. ${pago.monto}'),
                                  subtitle: Text(
                                      'Fecha de pago: ${pago.fechaPago.toLocal()}'),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    )
                  : const Text('No hay pagos registrados.'),
            ],
          ),
        ),
      ),
    );
  }
}
