import 'package:bloc/bloc.dart';
import 'package:books_remake/features/home/data/models/book_model/book_model.dart';
import 'package:books_remake/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final HomeRepo homeRepo;
  Future fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold((failure) {
      emit(NewestBooksFailed(failure.errMessage));
    }, (books) {
      emit(NewestBooksSuccess(books));
    });
  }
}
