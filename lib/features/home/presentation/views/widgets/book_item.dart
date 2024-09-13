import 'package:books_remake/core/utils/styles.dart';
import 'package:books_remake/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  const BookItem({
    this.widthFactor = 0.3,
    super.key,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    required this.book,
  });
  final double widthFactor;
  final CrossAxisAlignment crossAxisAlignment;
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width *
          widthFactor, // Add width constraint
      child: Column(
        crossAxisAlignment: crossAxisAlignment, // Align text to start
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Image.network(
              book.volumeInfo!.imageLinks!.thumbnail ?? '',
              fit: BoxFit.cover,
            ),
          ),
          // Add spacing between image and text
          Text(
              book.volumeInfo!.title ??
                  '', // Replace with dynamic title if needed
              style: Styles.textStyle20.copyWith(
                fontSize: 16,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis),
          Text(
            book.volumeInfo!.authors![0] ??
                '', // Replace with dynamic title if needed
            style: Styles.textStyle12,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
