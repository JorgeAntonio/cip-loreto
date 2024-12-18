import 'package:shared_preferences/shared_preferences.dart';

// Función para guardar el estado del pago
Future<void> savePagoState(
    String colegiatura, String mes, String estado) async {
  final prefs = await SharedPreferences.getInstance();
  final key = '$colegiatura-$mes'; // Clave única para cada pago
  prefs.setString(key, estado); // Guarda el estado como un String
}

// Función para cargar el estado del pago
Future<String?> loadPagoState(String colegiatura, String mes) async {
  final prefs = await SharedPreferences.getInstance();
  final key = '$colegiatura-$mes';
  return prefs.getString(key); // Retorna el estado guardado
}
