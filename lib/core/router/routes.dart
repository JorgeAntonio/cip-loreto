class Routes {
  const Routes._({required this.name, required this.path});
  final String name;
  final String path;

  static Routes get auth => const Routes._(
        name: 'auth',
        path: '/auth',
      );

  static Routes get home => const Routes._(
        name: 'home',
        path: '/',
      );

  static Routes get search => const Routes._(
        name: 'search',
        path: '/search',
      );

  static Routes get specie => const Routes._(
        name: '/specie',
        path: 'specie/:id',
      );

  static Routes get profile => const Routes._(
        name: 'profile',
        path: '/profile',
      );

  static Routes get payments => const Routes._(
        name: 'payments',
        path: '/payments',
      );

  static Routes get services => const Routes._(
        name: 'services',
        path: '/services',
      );
}
