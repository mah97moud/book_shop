import 'package:book_shop/core/utils/resources/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/resources/styles_manager.dart';
import '../../../data/models/volume_model/book.dart';
import 'book_rating.dart';
import 'books_action.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final width = size.width;
    final book = GoRouterState.of(context).extra as Book;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.16),
          child:
              CustomBookImage(imageUrl: book.volumeInfo?.imageLinks?.thumbnail),
        ),
        const SizedBox(height: 32.0),
        Text(
          book.volumeInfo?.title ?? '',
          style: StylesManager.textStyle30.copyWith(fontFamily: kGTSectraFine),
        textAlign: TextAlign.center,
        ),
        const SizedBox(height: 13.0),
        Text(
          book.volumeInfo?.authors?.first ?? '',
          style: StylesManager.textStyle18.copyWith(
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.italic,
            color: Colors.white70,
          ),
        ),
        const SizedBox(height: 20.0),
        BookRating(
          rating: book.volumeInfo?.averageRating?.toDouble() ?? 0.0,
          count: book.volumeInfo?.ratingsCount?.toInt() ?? 0,
        ),
        const SizedBox(height: 40.0),
        const BooksAction(),
      ],
    );
  }
}
