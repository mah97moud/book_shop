import 'package:book_shop/core/widgets/custom_error_widget.dart';
import 'package:book_shop/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manager/similler_books_cubit/similler_books_cubit.dart';
import 'custom_book_image.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final height = size.height;
    return Container(
      height: height * 0.15,
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
      ),
      child: BlocBuilder<SimillerBooksCubit, SimillerBooksState>(
        builder: (context, state) {
          return switch (state) {
            SimillerBooksInitial() => const SizedBox.shrink(),
            SimillerBooksLoading() => const CustomLoadingIndicator(),
            SimillerBooksFailure() =>
              CustomErrorWidget(errMessage: state.message),
            SimillerBooksSuccess(
              books: final books,
            ) =>
              ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.zero,
                itemCount: books.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: CustomBookImage(
                        imageUrl:
                            books[index].volumeInfo?.imageLinks?.thumbnail),
                  );
                },
              ),
          };
        },
      ),
    );
  }
}
