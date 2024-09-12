import 'package:books_remake/core/utils/routes.dart';
import 'package:books_remake/features/home/presentation/manager/cubits/featured_books_cubit/featured_boks_cubit.dart';
import 'package:books_remake/features/home/presentation/views/widgets/book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BookItemListView extends StatelessWidget {
  const BookItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBoksCubit, FeaturedBoksState>(
      builder: (context, state) {
        if (state is FeaturedBoksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: 24.0, left: 24, top: 20),
                    child: GestureDetector(
                        onTap: () {
                          GoRouter.of(context).push(AppRoutes.detailsview);
                        },
                        child: BookItem(
                          book: state.books[index],
                        )),
                  );
                }),
          );
        } else if (state is FeaturedBoksFailed) {
          return ErrorWidget(state.errorMessage);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
