import 'package:books_remake/features/home/views/details_view.dart';
import 'package:books_remake/features/home/views/home_view.dart';
import 'package:books_remake/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static const homeview = '/homeView';
  static const detailsview = '/detailsView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: '/homeView',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: '/detailsView',
        builder: (context, state) => const DetailsView(),
      ),
    ],
  );
}
