import 'package:books_remake/constant.dart';
import 'package:books_remake/core/utils/styles.dart';
import 'package:books_remake/features/home/views/widgets/rating_stars.dart';
import 'package:flutter/material.dart';

class NewestBooksItem extends StatelessWidget {
  const NewestBooksItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.23,
          child: AspectRatio(
            aspectRatio: 3 / 4,
            child: Image.asset(
              'assets/images/test.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15),
              Text('the name of the book the name of the book',
                  style: Styles.textStyle20,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis),
              Text('the author of the book', style: Styles.textStyle12),
              SizedBox(height: 4),
              RatingStars()
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40.0),
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add_shopping_cart,
                color: kPrimarybuttonsColor,
              )),
        )
      ],
    );
  }
}
