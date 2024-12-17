import 'package:cip_loreto/features/home/data/college_model.dart';
import 'package:cip_loreto/features/home/domain/fetch_data.dart';
import 'package:cip_loreto/features/home/presentation/widgest/home_app_bar.dart';
import 'package:cip_loreto/features/home/presentation/widgest/home_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_ui/flutter_app_ui.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';

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
      Logger().e('Error al cargar los datos: $e');
    }
  }

  void filterList(String query) {
    setState(() {
      searchQuery = query.toLowerCase();
      filteredColegiados = allColegiados.where((colegiado) {
        final fullName =
            '${colegiado.colegiatura} ${colegiado.numeroDocumento} ${colegiado.apellidoPaterno} ${colegiado.apellidoMaterno}'
                .toLowerCase();
        return fullName.contains(searchQuery);
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlutterAppBaseScreen(
      appBar: const HomeAppBar(),
      body: Padding(
        padding: edgeInsetsH16,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            gap16,
            const HomeTitle(
              title: 'Colegiados',
              subtitle:
                  'Lista de colegiados del Consejo Departamental de Loreto',
            ),
            gap16,
            TextField(
              onChanged: filterList,
              decoration: InputDecoration(
                filled: true,
                fillColor:
                    Theme.of(context).colorScheme.secondary.withOpacity(0.1),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
                hintText: "Buscar por CIP o DNI",
                hintStyle: TextStyle(
                    color: Colors.black.withOpacity(0.5), fontSize: 14),
                prefixIcon: const Icon(Icons.search),
                prefixIconColor: Colors.black,
              ),
            ),
            gap16,
            Expanded(
              child: filteredColegiados.isNotEmpty && searchQuery.isEmpty
                  ? const Center(child: Text('Busca por CIP o DNI'))
                  : filteredColegiados.isEmpty
                      ? const Center(child: CircularProgressIndicator())
                      : ListView.builder(
                          itemCount: filteredColegiados.length,
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            final colegiado = filteredColegiados[index];
                            return Card(
                              elevation: 1,
                              shadowColor: context.theme.shadowColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: ListTile(
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 12,
                                  color:
                                      Theme.of(context).colorScheme.onSurface,
                                ),
                                title: Text(
                                  '${colegiado.nombres} ${colegiado.apellidoPaterno} ${colegiado.apellidoMaterno}',
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                ),
                                subtitle: Text(
                                  colegiado.capitulo,
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                                onTap: () {
                                  context.go(
                                    '/home/0/colegiado_detail',
                                    extra: colegiado,
                                  );
                                },
                              ),
                            );
                          },
                        ),
            ),
          ],
        ),
      ),
    );
  }
}
