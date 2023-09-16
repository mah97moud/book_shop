import 'package:book_shop/core/utils/resources/constants.dart';
import 'package:book_shop/core/utils/resources/styles_manager.dart';
import 'package:book_shop/core/utils/router/route_names.dart';
import 'package:book_shop/features/home/data/models/book_model/book_model.dart';
import 'package:book_shop/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'book_rating.dart';

class BookItem extends StatelessWidget {
  const BookItem({Key? key, required this.book}) : super(key: key);

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.goNamed(RouteNames.bookDetailsView);
      },
      child: SizedBox(
        height: 130.0,
        child: Row(
          children: [
            CustomBookImage(imageUrl: book.volumeInfo?.imageLinks?.thumbnail),
            const SizedBox(width: 30.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.5,
                    child: Text(
                      book.volumeInfo?.title ?? '',
                      style: StylesManager.textStyle20
                          .copyWith(fontFamily: kGTSectraFine),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 3.0),
                  Text(
                    book.volumeInfo?.authors?.first ?? '',
                    style: StylesManager.textStyle14,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 3.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Free',
                        style: StylesManager.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      BookRating(
                        rating:
                            book.volumeInfo?.averageRating?.toDouble() ?? 0.0,
                        count: book.volumeInfo?.ratingsCount?.toInt() ?? 0,
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
