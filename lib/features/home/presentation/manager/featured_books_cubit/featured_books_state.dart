part of 'featured_books_cubit.dart';

sealed class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeaturedBoxInitial extends FeaturedBooksState {}

final class FeaturedBoxLoading extends FeaturedBooksState {}

final class FeaturedBoxFailure extends FeaturedBooksState {
  final String message;

  const FeaturedBoxFailure({required this.message});
}

final class FeaturedBoxSuccess extends FeaturedBooksState {
  final List<Book> books;

  const FeaturedBoxSuccess({required this.books});
}
