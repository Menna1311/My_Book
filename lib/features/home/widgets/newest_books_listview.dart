import 'package:books_remake/features/home/widgets/newest_books_item.dart';
import 'package:flutter/material.dart';

class NewestBooksListview extends StatelessWidget {
  const NewestBooksListview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 24.0),
            child: NewestBooksItem(),
          );
        });
  }
}
