import 'package:books_remake/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  const BookItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.3, // Add width constraint
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align text to start
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Image.asset(
              'assets/images/test.jpg',
              fit: BoxFit.cover,
            ),
          ),
          // Add spacing between image and text
          const Text(
            'Book Title', // Replace with dynamic title if needed
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'Book Title', // Replace with dynamic title if needed
            style: Styles.textStyle12,
          ),
        ],
      ),
    );
  }
}
