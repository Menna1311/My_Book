import 'package:books_remake/constant.dart';
import 'package:flutter/material.dart';

class CustomAppbarDetails extends StatelessWidget {
  const CustomAppbarDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios,
              color: kPrimarybuttonsColor,
            )),
        Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.bookmark_outline,
                  color: kPrimarybuttonsColor,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  color: kPrimarybuttonsColor,
                )),
          ],
        )
      ],
    );
  }
}
