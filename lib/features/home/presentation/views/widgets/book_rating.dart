import 'package:book_shop/core/utils/resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class BookRating extends StatelessWidget {
  const BookRating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          FontAwesome5Solid.star,
          color: Color(0xFFFFDD4F),
        ),
        SizedBox(
          width: 6.3,
        ),
        Text(
          '4.8',
          style: StylesManager.textStyle16,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          '(245)',
          style: StylesManager.textStyle14,
        ),
      ],
    );
  }
}
