import 'package:books_remake/core/utils/routes.dart';
import 'package:books_remake/features/home/presentation/manager/cubits/newest_books_cubit/newest_books_cubit.dart';
import 'package:books_remake/features/home/presentation/views/widgets/newest_books_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class NewestBooksListview extends StatelessWidget {
  const NewestBooksListview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 24.0),
                  child: GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(AppRoutes.detailsview,
                            extra: state.books[index]);
                      },
                      child: NewestBooksItem(book: state.books[index])),
                );
              });
        } else if (state is NewestBooksFailed) {
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
