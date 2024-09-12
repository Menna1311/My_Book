import 'package:books_remake/core/utils/styles.dart';
import 'package:flutter/material.dart';

class NewestBooksItem extends StatelessWidget {
  const NewestBooksItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.3,
          child: AspectRatio(
            aspectRatio: 3 / 4.5,
            child: Image.asset(
              'assets/images/test.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          children: [
            Text('the name of the box 1', style: Styles.textStyle12),
            Text('the author of the box 1', style: Styles.textStyle12),
          ],
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
      ],
    );
  }
}
