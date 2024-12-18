import 'package:cip_loreto/features/home/data/post_model.dart';
import 'package:cip_loreto/features/home/domain/fetch_data.dart';
import 'package:cip_loreto/features/home/presentation/widgest/home_app_bar.dart';
import 'package:cip_loreto/features/home/presentation/widgest/home_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_ui/flutter_app_ui.dart';

import 'package:logger/logger.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  List<Map<String, dynamic>> news = [];
  List<Publicacion> jsonNews = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    loadJsonNews();
  }

  Future<void> loadJsonNews() async {
    try {
      final res = await loadPublications();
      setState(() {
        news = res.map((item) {
          return {
            'imagen': item.imagen,
            'title': item.titulo,
            'description': item.contenido,
          };
        }).toList();
        isLoading = false;
      });
    } catch (e) {
      Logger().e('Error al cargar las noticias: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: edgeInsetsH16,
        child: Column(
          children: [
            const HomeAppBar(),
            gap16,
            const HomeTitle(
              title: 'Noticias',
              subtitle:
                  'Noticias recientes del Consejo Departamental de Loreto',
            ),
            gap16,
            isLoading
                ? const CircularProgressIndicator()
                : Expanded(
                    child: ListView.builder(
                      itemCount: news.length,
                      itemBuilder: (context, index) {
                        return Card(
                          margin: const EdgeInsets.symmetric(vertical: 8.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          elevation: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(15.0),
                                  topRight: Radius.circular(15.0),
                                ),
                                child: Image.network(
                                  news[index]['imagen']!,
                                  height: 150,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                  loadingBuilder: (BuildContext context,
                                      Widget child,
                                      ImageChunkEvent? loadingProgress) {
                                    if (loadingProgress == null) {
                                      return child;
                                    } else {
                                      return Center(
                                        child: CircularProgressIndicator(
                                          value: loadingProgress
                                                      .expectedTotalBytes !=
                                                  null
                                              ? loadingProgress
                                                      .cumulativeBytesLoaded /
                                                  (loadingProgress
                                                          .expectedTotalBytes ??
                                                      1)
                                              : null,
                                        ),
                                      );
                                    }
                                  },
                                  errorBuilder: (BuildContext context,
                                      Object error, StackTrace? stackTrace) {
                                    return const Center(
                                      child: Icon(
                                        Icons.broken_image,
                                        size: 120,
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      news[index]['title']!,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge,
                                    ),
                                    const SizedBox(height: 8.0),
                                    Text(
                                      news[index]['description']!,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                    ),
                                  ],
                                ),
                              ),
                            ],
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
