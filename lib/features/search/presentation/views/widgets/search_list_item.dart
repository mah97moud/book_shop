import 'package:book_shop/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/resources/constants.dart';
import '../../../../../core/utils/resources/styles_manager.dart';
import '../../../../home/data/models/volume_model/book.dart';
import '../../../../home/presentation/views/widgets/book_rating.dart';

class SearchListItem extends StatelessWidget {
  const SearchListItem({Key? key, required this.book}) : super(key: key);
  final Book book;

  @override
  Widget build(BuildContext context) {
    var volumeInfo = book.volumeInfo;
    return Container(
      height: 130.0,
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        children: [
          CustomBookImage(
            aspectRatio: 5.5 / 9,
            imageUrl: volumeInfo?.imageLinks?.thumbnail,
          ),
          const SizedBox(width: 30.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.5,
                  child: Text(
                    volumeInfo?.title ?? '',
                    style: StylesManager.textStyle20
                        .copyWith(fontFamily: kGTSectraFine),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 3.0),
                Text(
                  volumeInfo?.authors?.first ?? '',
                  style: StylesManager.textStyle14,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 3.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${book.saleInfo?.listPrice?.amount ?? '0'} '
                      '${book.saleInfo?.listPrice?.currencyCode}',
                      style: StylesManager.textStyle20.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    BookRating(
                      rating: book.volumeInfo?.averageRating?.toDouble() ?? 0.0,
                      count: book.volumeInfo?.ratingsCount?.toInt() ?? 0,
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
