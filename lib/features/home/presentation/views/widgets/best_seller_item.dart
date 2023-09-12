import 'package:book_shop/core/utils/resources/assets_manager.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 120.0,
      padding: const EdgeInsets.only(top: 10.0),
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
        ],
      ),
    );
  }
}
