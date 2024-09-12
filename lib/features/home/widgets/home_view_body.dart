import 'package:books_remake/core/utils/styles.dart';
import 'package:books_remake/features/home/widgets/book_item_listview.dart';
import 'package:books_remake/features/home/widgets/custom_appbar.dart';
import 'package:books_remake/features/home/widgets/newest_books_section.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: CustomAppbarHome()),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 24.0),
            child: Text(
              'Popular Books',
              style: Styles.textStyle24,
            ),
          ),
        ),
        SliverToBoxAdapter(child: BookItemListView()),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 40,
          ),
        ),
        SliverFillRemaining(child: NewstBooksSection()),
      ],
    );
  }
}
