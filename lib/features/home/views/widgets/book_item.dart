import 'package:books_remake/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  const BookItem({
    this.widthFactor = 0.3,
    super.key,
    this.crossAxisAlignment = CrossAxisAlignment.start,
  });
  final double widthFactor;
  final CrossAxisAlignment crossAxisAlignment;
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
            child: Image.asset(
              'assets/images/test.jpg',
              fit: BoxFit.cover,
            ),
          ),
          // Add spacing between image and text
          Text('Book Title', // Replace with dynamic title if needed
              style: Styles.textStyle20.copyWith(
                fontSize: 16,
              )),
          const Text(
            'Book Title', // Replace with dynamic title if needed
            style: Styles.textStyle12,
          ),
        ],
      ),
    );
  }
}
