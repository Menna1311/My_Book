import 'package:books_remake/core/utils/styles.dart';
import 'package:books_remake/features/home/views/widgets/book_item.dart';
import 'package:books_remake/features/home/views/widgets/custom_appbar_details.dart';
import 'package:books_remake/features/home/views/widgets/rating_stars.dart';
import 'package:flutter/material.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      SafeArea(
        child: CustomAppbarDetails(),
      ),
      SizedBox(
        height: 40,
      ),
      BookItem(
        crossAxisAlignment: CrossAxisAlignment.center,
        widthFactor: 0.5,
      ),
      Row(
        children: [
          RatingStars(),
          Text('4.0/5.0', style: Styles.textStyle12),
        ],
      )
    ]);
  }
}
