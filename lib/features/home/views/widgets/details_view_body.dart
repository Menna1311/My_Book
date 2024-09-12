import 'package:books_remake/core/utils/styles.dart';
import 'package:books_remake/features/home/views/widgets/book_actions_section.dart';
import 'package:books_remake/features/home/views/widgets/book_item.dart';
import 'package:books_remake/features/home/views/widgets/custom_appbar_details.dart';
import 'package:books_remake/features/home/views/widgets/rating_item.dart';
import 'package:flutter/material.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(children: [
        const SafeArea(
          child: CustomAppbarDetails(),
        ),
        const SizedBox(
          height: 40,
        ),
        const BookItem(
          crossAxisAlignment: CrossAxisAlignment.center,
          widthFactor: 0.5,
        ),
        const RatingItem(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Text(
            'here there will be the description of the book adfdwgsdh kjdhfk jsdhfkeshfwefh jdjfhksehfweh jhdkfjh ksjhekjh kjdsdhfkjhesuuhfsfdhfkdsjhf kjdhfkjg jh jkdhkshkjghk jh kjdhwlehowuegajlaskdjalskldjsf jkewhkjhskjdfh kjsdhfksdj h',
            style: Styles.textStyle12.copyWith(fontSize: 15),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        const Expanded(child: BookActionSection()),
      ]),
    );
  }
}
