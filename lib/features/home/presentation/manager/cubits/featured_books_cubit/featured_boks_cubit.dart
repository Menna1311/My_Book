import 'package:bloc/bloc.dart';
import 'package:books_remake/features/home/data/models/book_model/book_model.dart';
import 'package:books_remake/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_boks_state.dart';

class FeaturedBoksCubit extends Cubit<FeaturedBoksState> {
  FeaturedBoksCubit(this.homeRepo) : super(FeaturedBoksInitial());
  final HomeRepo homeRepo;
  Future fetchFeaturedBooks() async {
    emit(FeaturedBoksLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold((failure) {
      emit(FeaturedBoksFailed(failure.errMessage));
    }, (books) {
      emit(FeaturedBoksSuccess(books));
    });
  }
}
