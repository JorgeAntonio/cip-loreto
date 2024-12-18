import 'package:flutter_riverpod/flutter_riverpod.dart';

final pagoStateProvider =
    StateNotifierProvider<PagoStateNotifier, Map<String, Map<String, String>>>(
  (ref) => PagoStateNotifier(),
);

class PagoStateNotifier
    extends StateNotifier<Map<String, Map<String, String>>> {
  PagoStateNotifier() : super({});

  // Actualiza el estado de pago para un colegiado y mes específico
  void actualizarPago(String colegiatura, String mes, String estado) {
    state = {
      ...state,
      colegiatura: {
        ...?state[colegiatura],
        mes: estado,
      },
    };
  }

  // Obtiene el estado de pago para un colegiado y mes específico
  String? obtenerEstadoPago(String colegiatura, String mes) {
    return state[colegiatura]?[mes];
  }
}
