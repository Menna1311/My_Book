import 'package:books_remake/core/utils/styles.dart';
import 'package:books_remake/features/home/data/models/book_model/book_model.dart';
import 'package:books_remake/features/home/presentation/views/widgets/book_actions_section.dart';
import 'package:books_remake/features/home/presentation/views/widgets/book_item.dart';
import 'package:books_remake/features/home/presentation/views/widgets/custom_appbar_details.dart';
import 'package:books_remake/features/home/presentation/views/widgets/rating_item.dart';
import 'package:flutter/material.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: SingleChildScrollView(
        child: Column(children: [
          const SafeArea(
            child: CustomAppbarDetails(),
          ),
          const SizedBox(
            height: 40,
          ),
          BookItem(
            book: book,
            crossAxisAlignment: CrossAxisAlignment.center,
            widthFactor: 0.5,
          ),
          const RatingItem(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Text(
              book.volumeInfo!.description ?? '',
              style: Styles.textStyle12.copyWith(fontSize: 15),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          BookActionSection(),
        ]),
      ),
    );
  }
}
