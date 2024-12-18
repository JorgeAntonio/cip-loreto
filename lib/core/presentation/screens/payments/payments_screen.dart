import 'package:cip_loreto/core/providers/save_payments.dart';
import 'package:cip_loreto/features/home/data/college_model.dart';
import 'package:cip_loreto/features/home/domain/fetch_data.dart';
import 'package:cip_loreto/features/home/presentation/widgest/home_app_bar.dart';
import 'package:cip_loreto/features/home/presentation/widgest/paryment_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_ui/flutter_app_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:logger/logger.dart';

class PaymentsScreen extends ConsumerStatefulWidget {
  const PaymentsScreen({super.key});

  @override
  ConsumerState<PaymentsScreen> createState() => _PaymentsScreenState();
}

class _PaymentsScreenState extends ConsumerState<PaymentsScreen> {
  List<Colegiado> allColegiados = [];
  List<Colegiado> filteredColegiados = [];
  String searchQuery = "";
  final FlutterSecureStorage secureStorage = const FlutterSecureStorage();

  @override
  void initState() {
    super.initState();
    loadData();
    _loadAndFilterByCip();
  }

  Future<void> loadPagoStates(Colegiado colegiado) async {
    final dbHelper = DatabaseHelper();
    for (var cuota in colegiado.pagos!.keys) {
      final pagoData =
          await dbHelper.loadPago(colegiado.colegiatura.toString(), cuota);
      if (pagoData != null && pagoData['estado'] == "Pagado") {
        colegiado.pagos![cuota] = colegiado.pagos![cuota]!.copyWith(
          estado: "Pagado",
          fechaPago: DateTime.parse(pagoData['fechaPago']),
        );
      }
    }
  }

  Future<void> _loadAndFilterByCip() async {
    try {
      final cip = await secureStorage.read(key: 'cip');
      if (cip != null) {
        filterOneAccordingToColegiatura(cip);
      } else {
        Logger().w('No se encontró el CIP en el almacenamiento seguro.');
      }
    } catch (e) {
      Logger().e('Error al leer el CIP del almacenamiento seguro: $e');
    }
  }

  Future<void> loadData() async {
    try {
      final colegiados = await loadColegiados();
      for (var colegiado in colegiados) {
        await loadPagoStates(colegiado); // Carga los estados de SQLite
      }
      if (mounted) {
        setState(() {
          allColegiados = colegiados;
          filteredColegiados = colegiados;
        });
      }
    } catch (e) {
      Logger().e('Error al cargar los colegiados: $e');
    }
  }

  void filterOneAccordingToColegiatura(String colegiatura) {
    setState(() {
      final colegiado = allColegiados.firstWhere(
        (c) => c.colegiatura.toString() == colegiatura,
        orElse: () => Colegiado(
          item: 0,
          apellidoPaterno: '',
          apellidoMaterno: '',
          nombres: '',
          colegiatura: 0,
          tipoDocumento: 0,
          numeroDocumento: '',
          codigoCapitulo: 0,
          capitulo: '',
          correo: '',
          codigoPais: 0,
          tipoColegiado: '',
          consejoDepartamental: '',
        ),
      );

      filteredColegiados = colegiado.item != 0 ? [colegiado] : [];
    });
  }

  void _handlePayment(Colegiado colegiado) {
    String? selectedCuota;
    final cuotas = List.generate(12, (index) => (index + 1).toString());

    showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setStateDialog) => AlertDialog(
            title: const Text('Seleccionar Cuota para Pagar'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                DropdownButton<String>(
                  hint: const Text('Seleccione una cuota'),
                  value: selectedCuota,
                  items: cuotas.map((cuota) {
                    return DropdownMenuItem<String>(
                      value: cuota,
                      child: Text('Cuota $cuota'),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setStateDialog(() {
                      selectedCuota = value;
                    });
                  },
                ),
                const SizedBox(height: 10),
                FilledButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.red),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  onPressed: () async {
                    if (selectedCuota != null) {
                      Navigator.pop(context);
                      _simulatePaymentProcessing(colegiado, selectedCuota!);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text('Por favor seleccione una cuota.')),
                      );
                    }
                  },
                  child: const Text('Confirmar Pago'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _simulatePaymentProcessing(Colegiado colegiado, String cuota) async {
    final dbHelper = DatabaseHelper();
    // Muestra un diálogo de carga
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return const AlertDialog(
          title: Text('Procesando Pago...'),
          content: Row(
            children: [
              CircularProgressIndicator(),
              SizedBox(width: 16),
              Text('Por favor espere...'),
            ],
          ),
        );
      },
    );

    // Simula el tiempo de procesamiento
    await Future.delayed(const Duration(seconds: 3));

    // Cierra el diálogo de carga
    if (mounted) Navigator.pop(context);

    // Actualiza el estado de la cuota seleccionada
    setState(() {
      final cuotaIndex =
          int.parse(cuota) - 1; // Índice basado en el número de cuota
      final mesPagado = colegiado.pagos?.keys.elementAt(cuotaIndex);

      if (mesPagado != null) {
        final updatedPago = colegiado.pagos![mesPagado]!.copyWith(
          estado: "Pagado",
          fechaPago: DateTime.now(),
        );

        final updatedPagos = Map<String, Pago>.from(colegiado.pagos!)
          ..[mesPagado] = updatedPago;

        final updatedColegiado = colegiado.copyWith(pagos: updatedPagos);

        // Actualizar la lista de colegiados
        filteredColegiados = filteredColegiados.map((c) {
          return c.colegiatura == updatedColegiado.colegiatura
              ? updatedColegiado
              : c;
        }).toList();

        dbHelper.savePago(
          colegiado.colegiatura.toString(),
          mesPagado,
          "Pagado",
        );
      }
    });

    // Muestra la confirmación
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content:
            Text('Pago realizado para Cuota $cuota - ${colegiado.nombres}'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FlutterAppBaseScreen(
      appBar: const HomeAppBar(),
      body: filteredColegiados.isEmpty
          ? const Center(child: Text("No se encontraron pagos"))
          : ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: filteredColegiados.length,
              itemBuilder: (context, index) {
                final colegiado = filteredColegiados[index];
                final payment = colegiado.pagos?.values;
                if (payment != null) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 32),
                    child: Column(
                      children: [
                        PaymentDetailWidget(
                          payments: payment,
                        ),
                        const Divider(
                          color: Colors.red,
                          thickness: 1,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: double.infinity,
                            child: FilledButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    WidgetStateProperty.all(Colors.red),
                                shape: WidgetStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                _handlePayment(colegiado);
                              },
                              child: const Text('Pagar'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                } else {
                  return const SizedBox.shrink();
                }
              },
            ),
    );
  }
}
