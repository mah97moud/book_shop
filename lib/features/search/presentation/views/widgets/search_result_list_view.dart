import 'package:book_shop/core/widgets/custom_error_widget.dart';
import 'package:book_shop/features/search/presentation/manager/search_books_bloc/search_books_bloc.dart';
import 'package:book_shop/features/search/presentation/views/widgets/search_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksBloc, SearchBooksState>(
      builder: (context, state) {
        return switch (state) {
          SearchBooksInitial() => const Center(
              child: Text('Enter Text to search'),
            ),
          SearchBooksLoading() => Expanded(
              child: Skeletonizer(
                enabled: true,
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (_, index) {
                    return const SearchListItem();
                  },
                ),
              ),
            ),
          SearchBooksFailure() => CustomErrorWidget(
              errMessage: state.errMessage,
            ),
          SearchBooksSuccess(books: final books) => Expanded(
              child: ListView.builder(
                itemCount: books.length,
                itemBuilder: (_, index) {
                  return SearchListItem(
                    book: books[index],
                  );
                },
              ),
            ),
        };
      },
    );
  }
}
