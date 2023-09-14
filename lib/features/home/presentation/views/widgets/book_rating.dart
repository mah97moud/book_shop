import 'package:book_shop/core/utils/resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    Key? key,
    this.mainAxisAlignment = MainAxisAlignment.center,
  }) : super(key: key);
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: const [
        Icon(
          FontAwesome5Solid.star,
          color: Color(0xFFFFDD4F),
          size: 16.0,
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
        Opacity(
          opacity: 0.5,
          child: Text(
            '(245)',
            style: StylesManager.textStyle14,
          ),
        ),
      ],
    );
  }
}
