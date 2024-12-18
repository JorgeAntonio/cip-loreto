import 'dart:convert';
import 'package:cip_loreto/features/home/data/college_model.dart';
import 'package:cip_loreto/features/home/data/post_model.dart';
// ignore: library_prefixes
import 'package:flutter/services.dart' as rootBundle;

Future<List<Colegiado>> loadColegiados() async {
  final String response = await rootBundle.rootBundle
      .loadString('assets/data/data_with_monthly_payments.json');
  final List<dynamic> jsonData = json.decode(response)['data'];
  return jsonData.map((json) => Colegiado.fromJson(json)).toList();
}

Future<List<Publicacion>> loadPublications() async {
  final String response =
      await rootBundle.rootBundle.loadString('assets/data/eventos.json');
  final List<dynamic> jsonData = json.decode(response)['publicaciones'];
  return jsonData.map((json) => Publicacion.fromJson(json)).toList();
}
