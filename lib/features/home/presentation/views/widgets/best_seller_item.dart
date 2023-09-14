import 'package:book_shop/core/utils/resources/assets_manager.dart';
import 'package:book_shop/core/utils/resources/constants.dart';
import 'package:book_shop/core/utils/resources/styles_manager.dart';
import 'package:flutter/material.dart';

import 'book_rating.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130.0,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 5.5 / 9,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: const DecorationImage(
                  image: AssetImage(
                    AssetsManager.testImage,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const SizedBox(width: 30.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.5,
                  child: Text(
                    'Hary Potter and the Golbet of Fire',
                    style: StylesManager.textStyle20
                        .copyWith(fontFamily: kGTSectraFine),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 3.0),
                const Text(
                  'J.K. Rowling',
                  style: StylesManager.textStyle14,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 3.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '19.99 €',
                      style: StylesManager.textStyle20.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const BookRating()
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
