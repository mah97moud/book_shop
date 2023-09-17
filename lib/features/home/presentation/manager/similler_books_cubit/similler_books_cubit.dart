import 'package:book_shop/core/utils/helpers/result_helper.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/book_model/book_model.dart';
import '../../../data/repos/home_repo.dart';

part 'similler_books_state.dart';

class SimillerBooksCubit extends Cubit<SimillerBooksState> {
  SimillerBooksCubit(this._homeRepo) : super(SimillerBooksInitial());

  final HomeRepo _homeRepo;

  Future<void> fetchSimillerBooks({
    required String category,
  }) async {
    emit(SimillerBooksLoading());

    final result = await _homeRepo.fetchSimillerBooks(category: category);

    result.fold(
      (data) => emit(SimillerBooksSuccess(books: data)),
      (exception) => emit(SimillerBooksFailure(message: exception.errMessage)),
    );
  }
}
