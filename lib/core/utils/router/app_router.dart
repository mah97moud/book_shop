import 'package:book_shop/core/utils/router/route_names.dart';
import 'package:book_shop/features/home/presentation/views/book_details_view.dart';
import 'package:book_shop/features/home/presentation/views/home_view.dart';
import 'package:book_shop/features/search/presentation/views/search_view.dart';
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
        routes: [
          GoRoute(
            path: RouteNames.bookDetailsView,
            name: RouteNames.bookDetailsView,
            builder: (context, state) => const BookDetailsView(),
          ),
        ],
      ),
      GoRoute(
        path: '/${RouteNames.searchView}',
        name: RouteNames.searchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
