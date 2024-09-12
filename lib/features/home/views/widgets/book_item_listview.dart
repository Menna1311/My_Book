import 'package:books_remake/core/utils/routes.dart';
import 'package:books_remake/features/home/views/widgets/book_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookItemListView extends StatelessWidget {
  const BookItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(right: 24.0, left: 24, top: 20),
              child: GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push(AppRoutes.detailsview);
                  },
                  child: BookItem()),
            );
          }),
    );
  }
}
