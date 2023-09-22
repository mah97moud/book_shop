part of 'search_books_bloc.dart';

sealed class SearchBooksEvent extends Equatable {
  const SearchBooksEvent();

  @override
  List<Object> get props => [];
}

final class SearchEvent extends SearchBooksEvent {
  final String searchText;

  const SearchEvent({required this.searchText});

  @override
  List<Object> get props => [searchText];
}
