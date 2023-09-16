import 'package:book_shop/core/widgets/custom_error_widget.dart';
import 'package:book_shop/core/widgets/custom_loading_indicator.dart';
import 'package:book_shop/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manager/featured_books_cubit/featured_books_cubit.dart';

class HorizontalHomeListView extends StatelessWidget {
  const HorizontalHomeListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final height = size.height;
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        return switch (state) {
          FeaturedBoxInitial() => const SizedBox.shrink(),
          FeaturedBoxLoading() => const CustomLoadingIndicator(),
          FeaturedBoxFailure(message: final error) =>
            CustomErrorWidget(errMessage: error),
          FeaturedBoxSuccess(books: final books) => Container(
              height: height * 0.3,
              padding: const EdgeInsets.symmetric(
                vertical: 10.0,
              ),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: books.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: CustomBookImage(
                      imageUrl: books[index].volumeInfo?.imageLinks?.thumbnail,
                    ),
                  );
                },
              ),
            ),
        };
      },
    );
  }
}
