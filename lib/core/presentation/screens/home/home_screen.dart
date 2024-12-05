import 'package:cip_loreto/features/home/data/college_model.dart';
import 'package:cip_loreto/features/home/domain/fetch_data.dart';
import 'package:cip_loreto/features/home/presentation/widgest/home_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_ui/flutter_app_ui.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static Widget builder(BuildContext _, GoRouterState __) {
    return const HomeScreen();
  }

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Colegiado> allColegiados = [];
  List<Colegiado> filteredColegiados = [];
  String searchQuery = "";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    try {
      final colegiados = await loadColegiados();
      setState(() {
        allColegiados = colegiados;
        filteredColegiados =
            colegiados; // Inicialmente, todos los datos están visibles
      });
    } catch (e) {
      // Maneja errores si es necesario
      print('Error al cargar los datos: $e');
    }
  }

  void filterList(String query) {
    setState(() {
      searchQuery = query.toLowerCase();
      filteredColegiados = allColegiados.where((colegiado) {
        final fullName =
            '${colegiado.nombres} ${colegiado.apellidoPaterno} ${colegiado.apellidoMaterno}'
                .toLowerCase();
        return fullName.contains(searchQuery);
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlutterAppBaseScreen(
      appBar: const HomeAppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: filterList,
              decoration: InputDecoration(
                labelText: 'Buscar colegiado',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ),
          Expanded(
            child: filteredColegiados.isEmpty
                ? const Center(child: Text('No se encontraron resultados.'))
                : ListView.builder(
                    itemCount: filteredColegiados.length,
                    itemBuilder: (context, index) {
                      final colegiado = filteredColegiados[index];
                      return ListTile(
                        title: Text(
                            '${colegiado.nombres} ${colegiado.apellidoPaterno} ${colegiado.apellidoMaterno}'),
                        subtitle: Text('Capítulo: ${colegiado.capitulo}'),
                        onTap: () {
                          // Navegar a la pantalla de detalles del colegiado
                          context.go(
                            '/home/0/colegiado_detail', // Define la ruta para los detalles
                            extra:
                                colegiado, // Pasar el objeto Colegiado a la pantalla de detalles
                          );
                        },
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
