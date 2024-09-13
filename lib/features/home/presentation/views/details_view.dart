import 'package:books_remake/features/home/data/models/book_model/book_model.dart';
import 'package:books_remake/features/home/presentation/manager/cubits/similar_books_cubit/similar_books_cubit.dart';
import 'package:books_remake/features/home/presentation/views/widgets/details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsView extends StatefulWidget {
  const DetailsView({super.key, required this.book});
  final BookModel book;
  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<SimilarBooksCubit>(context)
        .fetchSimilarBooks(category: widget.book.volumeInfo!.categories![0]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailsViewBody(
        book: widget.book,
      ),
    );
  }
}
