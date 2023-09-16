import 'package:book_shop/core/utils/resources/constants.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/resources/styles_manager.dart';
import 'book_rating.dart';
import 'books_action.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final width = size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.16),
          child: const CustomBookImage(
            imageUrl:
                'https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&w=1000&q=80',
          ),
        ),
        const SizedBox(height: 32.0),
        Text(
          'The Jungle Book',
          style: StylesManager.textStyle30.copyWith(fontFamily: kGTSectraFine),
        ),
        const SizedBox(height: 13.0),
        Text(
          'Rudyard Kipling',
          style: StylesManager.textStyle18.copyWith(
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.italic,
            color: Colors.white70,
          ),
        ),
        const SizedBox(height: 20.0),
         const BookRating(
          rating: 0.0,
          count: 0,
        ),
        const SizedBox(height: 40.0),
        const BooksAction(),
      ],
    );
  }
}
