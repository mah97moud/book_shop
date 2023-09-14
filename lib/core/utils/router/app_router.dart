import 'package:book_shop/core/utils/router/route_names.dart';
import 'package:book_shop/features/home/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  /// GoRouter configuration
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: '/homeView',
        name: RouteNames.homeView,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
