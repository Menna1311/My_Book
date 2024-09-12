import 'package:books_remake/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomAppbarHome extends StatelessWidget {
  const CustomAppbarHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 24.0, left: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              Assets.logo,
              height: 40,
              color: const Color(0xFF4F2611),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Color(0xFF4F2611),
                  size: 30,
                ))
          ],
        ),
      ),
    );
  }
}
