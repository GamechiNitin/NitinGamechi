import 'package:go_router/go_router.dart';
import 'package:nitingamechi/view/features/home/home_page.dart';
import 'package:nitingamechi/view/features/splash/splash_page.dart';

enum RouteEnum {
  initial,
  splash,
  home;
}

class NgRoutes {
  static final GoRouter ngRouter = GoRouter(
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/',
        name: RouteEnum.initial.name,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/${RouteEnum.splash.name}',
        name: RouteEnum.splash.name,
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: '/${RouteEnum.home.name}',
        name: RouteEnum.home.name,
        builder: (context, state) => const HomePage(),
      ),
    ],
  );
}
