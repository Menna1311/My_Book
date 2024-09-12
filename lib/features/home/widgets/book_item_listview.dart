import 'package:books_remake/features/home/widgets/book_item.dart';
import 'package:flutter/material.dart';

class BookItemListView extends StatelessWidget {
  const BookItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(right: 24.0, left: 24, top: 20),
              child: BookItem(),
            );
          }),
    );
  }
}
