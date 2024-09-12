import 'package:books_remake/core/utils/styles.dart';
import 'package:books_remake/features/home/views/widgets/rating_stars.dart';
import 'package:flutter/material.dart';

class RatingItem extends StatelessWidget {
  const RatingItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 80.0, left: 80, top: 20, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RatingStars(),
          Text('4.0/5.0', style: Styles.textStyle12),
        ],
      ),
    );
  }
}
