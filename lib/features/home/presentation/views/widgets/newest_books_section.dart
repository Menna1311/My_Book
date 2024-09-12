import 'package:books_remake/core/utils/styles.dart';
import 'package:books_remake/features/home/presentation/views/widgets/newest_books_listview.dart';
import 'package:flutter/material.dart';

class NewstBooksSection extends StatelessWidget {
  const NewstBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Newest', style: Styles.textStyle24),
          Expanded(child: NewestBooksListview()),
        ],
      ),
    );
  }
}
