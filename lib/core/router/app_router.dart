import 'package:cip_loreto/core/presentation/screens/payments/payments_screen.dart';
import 'package:cip_loreto/core/presentation/screens/services/services_screen.dart';
import 'package:cip_loreto/lib.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final routerProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(
      // initialLocation: Routes.species.path,
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
            if (pageIndex < 0 || pageIndex > 3) context.go('/home/0');
            return IndexScreen(
              pageIndex: pageIndex,
              onPageChanged: (int value) {
                context.go('/home/$value');
              },
            );
          },
          routes: [
            GoRoute(
              path: 'services',
              name: Routes.services.name,
              builder: (context, state) {
                return const ServicesScreen();
              },
            ),
            GoRoute(
              path: 'payments',
              name: Routes.payments.name,
              builder: (context, state) {
                return const PaymentsScreen();
              },
            ),
            GoRoute(
              path: 'profile',
              name: Routes.profile.name,
              builder: (context, state) {
                return const ProfileScreen();
              },
            ),
          ],
        ),
      ];
}
