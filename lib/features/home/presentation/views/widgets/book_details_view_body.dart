import 'package:book_shop/core/utils/resources/constants.dart';
import 'package:book_shop/core/utils/resources/styles_manager.dart';
import 'package:book_shop/features/home/presentation/views/widgets/book_rating.dart';
import 'package:book_shop/features/home/presentation/views/widgets/books_action.dart';
import 'package:book_shop/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final width = size.width;
    return Padding(
      padding: kPaddingHorizontal30,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.16),
            child: const CustomBookImage(),
          ),
          const SizedBox(height: 32.0),
          Text(
            'The Jungle Book',
            style:
                StylesManager.textStyle30.copyWith(fontFamily: kGTSectraFine),
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
          const BookRating(),
          const SizedBox(height: 40.0),
          const BooksAction()
        ],
      ),
    );
  }
}
