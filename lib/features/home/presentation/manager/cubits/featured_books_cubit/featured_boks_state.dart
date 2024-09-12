part of 'featured_boks_cubit.dart';

sealed class FeaturedBoksState extends Equatable {
  const FeaturedBoksState();

  @override
  List<Object> get props => [];
}

final class FeaturedBoksInitial extends FeaturedBoksState {}

final class FeaturedBoksSuccess extends FeaturedBoksState {
  final List<BookModel> books;

  const FeaturedBoksSuccess(this.books);
}

final class FeaturedBoksFailed extends FeaturedBoksState {
  final String errorMessage;

  const FeaturedBoksFailed(this.errorMessage);
}

final class FeaturedBoksLoading extends FeaturedBoksState {}
