import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthState {
  final bool isAuthenticated;

  AuthState({required this.isAuthenticated});
}

class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier() : super(AuthState(isAuthenticated: false));

  void login() {
    state = AuthState(isAuthenticated: true); // Cambia el estado a autenticado
  }

  void logout() {
    state =
        AuthState(isAuthenticated: false); // Cambia el estado a no autenticado
  }
}

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>(
  (ref) => AuthNotifier(),
);
