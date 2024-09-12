import 'package:books_remake/constant.dart';
import 'package:books_remake/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookActionSection extends StatelessWidget {
  const BookActionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: kPrimaryColor,
                  shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(color: Color(0xFFBF6640), width: 1.5),
                    borderRadius: BorderRadius.circular(8), // Circular edges
                  ),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.drag_handle_outlined,
                      color: kPrimarybuttonsColor,
                    ),
                    Text('Preview',
                        style: Styles.textStyle12
                            .copyWith(color: kPrimarybuttonsColor)),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: kPrimaryColor,
                  shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(color: Color(0xFFBF6640), width: 1.5),
                    borderRadius: BorderRadius.circular(8), // Circular edges
                  ),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.comment_outlined,
                      color: kPrimarybuttonsColor,
                    ),
                    Text('Preview',
                        style: Styles.textStyle12
                            .copyWith(color: kPrimarybuttonsColor)),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 18,
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      backgroundColor: const Color(0xFFBF6640),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    child: const Text(
                      'Free',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
