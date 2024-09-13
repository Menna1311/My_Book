import 'package:books_remake/core/utils/service_locator.dart';
import 'package:books_remake/features/home/data/models/book_model/book_model.dart';
import 'package:books_remake/features/home/data/repos/home_repo_impl.dart';
import 'package:books_remake/features/home/presentation/manager/cubits/similar_books_cubit/similar_books_cubit.dart';
import 'package:books_remake/features/home/presentation/views/details_view.dart';
import 'package:books_remake/features/home/presentation/views/home_view.dart';
import 'package:books_remake/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(getit.get<HomeRepoImpl>()),
          child: DetailsView(
            book: state.extra as BookModel,
          ),
        ),
      ),
    ],
  );
}
