import 'package:books_remake/constant.dart';
import 'package:flutter/material.dart';

class RatingStars extends StatelessWidget {
  const RatingStars({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star, color: kPrimarybuttonsColor, size: 20),
        Icon(Icons.star, color: kPrimarybuttonsColor, size: 20),
        Icon(Icons.star, color: kPrimarybuttonsColor, size: 20),
        Icon(Icons.star, color: kPrimarybuttonsColor, size: 20),
        Icon(Icons.star, color: kPrimarybuttonsColor, size: 20),
      ],
    );
  }
}
