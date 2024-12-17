import 'dart:convert';
import 'package:cip_loreto/features/home/data/college_model.dart';
// ignore: library_prefixes
import 'package:flutter/services.dart' as rootBundle;

Future<List<Colegiado>> loadColegiados() async {
  final String response =
      await rootBundle.rootBundle.loadString('assets/data/data.json');
  final List<dynamic> jsonData = json.decode(response)['data'];
  return jsonData.map((json) => Colegiado.fromJson(json)).toList();
}
