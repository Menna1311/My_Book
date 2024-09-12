import 'package:books_remake/bloc_observer.dart';
import 'package:books_remake/constant.dart';
import 'package:books_remake/core/utils/routes.dart';
import 'package:books_remake/core/utils/service_locator.dart';
import 'package:books_remake/features/home/data/repos/home_repo_impl.dart';
import 'package:books_remake/features/home/presentation/manager/cubits/featured_books_cubit/featured_boks_cubit.dart';
import 'package:books_remake/features/home/presentation/manager/cubits/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  setUpserviceLocator();
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => NewestBooksCubit(
                  getit.get<HomeRepoImpl>(),
                )..fetchNewestBooks()),
        BlocProvider(
            create: (context) => FeaturedBoksCubit(
                  getit.get<HomeRepoImpl>(),
                )..fetchFeaturedBooks())
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData().copyWith(scaffoldBackgroundColor: kPrimaryColor),
        routerConfig: AppRoutes.router,
      ),
    );
  }
}
