part of 'similar_books_cubit.dart';

sealed class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

final class SimilarBooksInitial extends SimilarBooksState {}

final class SimilarBookssuccess extends SimilarBooksState {
  final List<BookModel> books;

  const SimilarBookssuccess(this.books);
}

final class SimilarBooksfailed extends SimilarBooksState {
  final String errorMessage;

  const SimilarBooksfailed(this.errorMessage);
}

final class SimilarBooksloading extends SimilarBooksState {}
