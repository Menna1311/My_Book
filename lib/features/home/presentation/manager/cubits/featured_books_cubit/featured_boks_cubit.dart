import 'package:bloc/bloc.dart';
import 'package:books_remake/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'featured_boks_state.dart';

class FeaturedBoksCubit extends Cubit<FeaturedBoksState> {
  FeaturedBoksCubit() : super(FeaturedBoksInitial());
}
