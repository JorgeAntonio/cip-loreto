import 'package:cip_loreto/core/presentation/screens/detail/detail_page.dart';
import 'package:cip_loreto/features/home/data/college_model.dart';
import 'package:cip_loreto/lib.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final routerProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(
      initialLocation: '/home/0',
      routes: AppRouter.routes,
    );
  },
);

class AppRouter {
  const AppRouter._();

  static List<GoRoute> get routes => [
        GoRoute(
          path: '/home/:page',
          name: Routes.auth.name,
          builder: (context, state) {
            final pageIndex = int.parse(state.pathParameters['page'] ?? '0');
            if (pageIndex < 0 || pageIndex > 1) context.go('/home/0');
            return IndexScreen(
              pageIndex: pageIndex,
              onPageChanged: (int value) {
                context.go('/home/$value');
              },
            );
          },
          routes: [
            GoRoute(
              path: 'profile',
              name: Routes.profile.name,
              builder: (context, state) {
                return const ProfileScreen();
              },
            ),
            // Ruta para el detalle del colegiado
            GoRoute(
              path: 'colegiado_detail',
              builder: (context, state) {
                final colegiado =
                    state.extra as Colegiado; // Obtener el colegiado pasado
                return ColegiadoDetailScreen(colegiado: colegiado);
              },
            ),
          ],
        ),
      ];
}
