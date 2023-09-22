import 'package:book_shop/core/utils/helpers/result_helper.dart';
import 'package:book_shop/features/home/data/models/volume_model/book.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repos/search_repo.dart';

part 'search_books_event.dart';
part 'search_books_state.dart';

class SearchBooksBloc extends Bloc<SearchBooksEvent, SearchBooksState> {
  final SearchRepo _searchRepoImpl;

  SearchBooksBloc(this._searchRepoImpl) : super(SearchBooksInitial()) {
    on<SearchBooksEvent>((event, emit) {
      return switch (event) {
        SearchEvent(searchText: final text) => _search(emit, text: text),
      };
    });
  }

  Future<void> _search(
    Emitter<SearchBooksState> emit, {
    required String text,
  }) async {
    emit(SearchBooksLoading());

    final result = await _searchRepoImpl.featchSearchBooks(searchText: text);

    result.fold(
      (books) => emit(SearchBooksSuccess(books)),
      (exception) => emit(SearchBooksFailure(exception.errMessage)),
    );
  }
}
