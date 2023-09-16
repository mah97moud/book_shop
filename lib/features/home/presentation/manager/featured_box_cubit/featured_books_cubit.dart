import 'package:book_shop/core/utils/helpers/result_helper.dart';
import 'package:book_shop/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/book_model/book_model.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this._homeRepo) : super(FeaturedBoxInitial());

  final HomeRepo _homeRepo;

  Future<void> fetchFeatureBooks() async {
    emit(FeaturedBoxLoading());

    final result = await _homeRepo.fetchFeaturedBooks();

    result.fold(
      (data) => emit(FeaturedBoxSuccess(books: data)),
      (exception) => emit(FeaturedBoxFailure(message: exception.errMessage)),
    );
  }
}
