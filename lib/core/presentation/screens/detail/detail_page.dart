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
                        'CIP: ${colegiado.colegiatura}',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Text(
                        'DNI: ${colegiado.numeroDocumento}',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ],
                  ),
                  gap16,
                  UserInfo(
                    label: 'Nombre:',
                    value:
                        '${colegiado.nombres} ${colegiado.apellidoPaterno} ${colegiado.apellidoMaterno}',
                  ),
                  gap16,
                  UserInfo(
                    label: 'Especialidad:',
                    value: colegiado.capitulo,
                  ),
                  gap16,
                  UserInfo(
                    label: 'Tipo de Colegiado:',
                    value: colegiado.tipoColegiado,
                  ),
                  gap16,
                  UserInfo(
                    label: 'Correo:',
                    value: colegiado.correo,
                  ),
                  gap16,
                  UserInfo(
                    label: 'Celular:',
                    value: colegiado.celular != ''
                        ? '${colegiado.celular}'
                        : 'No registrado',
                  ),
                  gap16,
                  const UserInfo(
                    label: 'Estado:',
                    value: 'Activo',
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
                                  subtitle: Text(
                                    'Monto: s/. ${pago.monto}',
                                    textAlign: TextAlign.end,
                                    style:
                                        Theme.of(context).textTheme.titleSmall,
                                  ),
                                  title: Text(
                                    'Fecha de pago: ${pago.fechaPago.toLocal().toString().split(' ')[0]}',
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
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

class UserInfo extends StatelessWidget {
  const UserInfo({super.key, required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.labelSmall!.copyWith(
                fontWeight: FontWeight.w700,
              ),
        ),
        Text(
          value,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
