import 'package:books_remake/core/utils/styles.dart';
import 'package:books_remake/features/home/widgets/book_item_listview.dart';
import 'package:books_remake/features/home/widgets/custom_appbar.dart';
import 'package:books_remake/features/home/widgets/newest_books_listview.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppbarHome(),
        Text(
          'Popular Books',
          style: Styles.textStyle24,
        ),
        BookItemListView(),
        Text('Newest', style: Styles.textStyle24),
        Expanded(child: NewestBooksListview())
      ],
    );
  }
}
