import 'package:book_shop/core/widgets/custom_error_widget.dart';
import 'package:book_shop/core/widgets/custom_loading_indicator.dart';
import 'package:book_shop/features/home/presentation/views/widgets/book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manager/new_books_cubit/new_books_cubit.dart';

class NewBooksListView extends StatelessWidget {
  const NewBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: BlocBuilder<NewBooksCubit, NewBooksState>(
        builder: (context, state) {
          return switch (state) {
            NewBooksInitial() => const SizedBox.shrink(),
            NewBooksLoading() => const CustomLoadingIndicator(),
            NewBooksFailure() => CustomErrorWidget(errMessage: state.message),
            NewBooksSuccess(books: final books) => ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: books.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: BookItem(
                      book: books[index],
                    ),
                  );
                },
              ),
          };
        },
      ),
    );
  }
}
