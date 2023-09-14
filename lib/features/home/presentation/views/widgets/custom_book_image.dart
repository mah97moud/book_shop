import 'package:book_shop/core/utils/resources/assets_manager.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 5.5 / 8,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          image: const DecorationImage(
            image: AssetImage(
              AssetsManager.testImage,
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
