part of 'search_books_bloc.dart';

sealed class SearchBooksState extends Equatable {
  const SearchBooksState();

  @override
  List<Object> get props => [];
}

final class SearchBooksInitial extends SearchBooksState {}

final class SearchBooksLoading extends SearchBooksState {}

final class SearchBooksFailure extends SearchBooksState {
  final String errMessage;

  const SearchBooksFailure(this.errMessage);

  @override
  List<Object> get props => [errMessage];
}

final class SearchBooksSuccess extends SearchBooksState {
  final List<BookModel> books;

  const SearchBooksSuccess(this.books);
  @override
  List<Object> get props => [books];
}
