part of 'similler_books_cubit.dart';

sealed class SimillerBooksState extends Equatable {
  const SimillerBooksState();

  @override
  List<Object> get props => [];
}

final class SimillerBooksInitial extends SimillerBooksState {}

final class SimillerBooksLoading extends SimillerBooksState {}

final class SimillerBooksFailure extends SimillerBooksState {
  final String message;

  const SimillerBooksFailure({required this.message});
}

final class SimillerBooksSuccess extends SimillerBooksState {
  final List<Book> books;

  const SimillerBooksSuccess({required this.books});
}
