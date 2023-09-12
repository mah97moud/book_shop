import 'package:book_shop/core/utils/resources/assets_manager.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return AspectRatio(
      aspectRatio: 6/9,
      child: Container(
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: Colors.red,
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
