

import 'package:book_shop/core/utils/resources/constants.dart';
import 'package:book_shop/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
const BookDetailsViewBody({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    final size = MediaQuery.sizeOf(context);
    final width = size.width;
     return   Padding(
      padding: kPaddingHorizontal30,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.17),
            child: const CustomBookImage(),
          ),
        ],
      ),
    );
  }
}