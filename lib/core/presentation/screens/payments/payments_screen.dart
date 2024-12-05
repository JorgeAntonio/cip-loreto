import 'package:cip_loreto/features/home/data/college_model.dart';
import 'package:cip_loreto/features/home/domain/fetch_data.dart';
import 'package:cip_loreto/features/home/presentation/widgest/home_app_bar.dart';
import 'package:cip_loreto/features/home/presentation/widgest/paryment_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_ui/flutter_app_ui.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class PaymentsScreen extends StatefulWidget {
  const PaymentsScreen({super.key});

  @override
  State<PaymentsScreen> createState() => _PaymentsScreenState();
}

class _PaymentsScreenState extends State<PaymentsScreen> {
  List<Colegiado> allColegiados = [];
  List<Colegiado> filteredColegiados = [];
  String searchQuery = "";
  final FlutterSecureStorage secureStorage = const FlutterSecureStorage();

  @override
  void initState() {
    super.initState();
    loadData();
    _loadAndFilterByCip(); // Llama al método para cargar y filtrar por CIP
  }

  Future<void> _loadAndFilterByCip() async {
    try {
      final cip = await secureStorage.read(key: 'cip'); // Lee el CIP almacenado
      if (cip != null) {
        filterOneAccordingToColegiatura(cip); // Usa el CIP para filtrar
      } else {
        print('No se encontró un CIP almacenado.');
      }
    } catch (e) {
      print('Error al recuperar el CIP: $e');
    }
  }

  Future<void> loadData() async {
    try {
      final colegiados = await loadColegiados();
      setState(() {
        allColegiados = colegiados;
        filteredColegiados = colegiados;
      });
    } catch (e) {
      print('Error al cargar los datos: $e');
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
                  return PaymentDetailWidget(payments: payment);
                } else {
                  return const SizedBox
                      .shrink(); // or handle the case where there are no payments
                }
              },
            ),
    );
  }
}
