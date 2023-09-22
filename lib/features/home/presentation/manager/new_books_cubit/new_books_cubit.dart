import 'package:book_shop/core/utils/helpers/result_helper.dart';
import 'package:book_shop/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/volume_model/book.dart';

part 'new_books_state.dart';

class NewBooksCubit extends Cubit<NewBooksState> {
  NewBooksCubit(this._homeRepo) : super(NewBooksInitial());

  final HomeRepo _homeRepo;

  Future<void> fetchNewBooks() async {
    emit(NewBooksLoading());

    final result = await _homeRepo.fetchNewBooks();

    result.fold(
      (data) => emit(NewBooksSuccess(books: data)),
      (exception) => emit(NewBooksFailure(message: exception.errMessage)),
    );
  }
}
