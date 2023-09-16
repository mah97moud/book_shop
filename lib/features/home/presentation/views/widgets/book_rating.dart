import 'package:book_shop/core/utils/resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    Key? key,
    this.mainAxisAlignment = MainAxisAlignment.center,
    required this.rating,
    required this.count,
  }) : super(key: key);
  final MainAxisAlignment mainAxisAlignment;
  final double rating;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesome5Solid.star,
          color: Color(0xFFFFDD4F),
          size: 16.0,
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          '$rating',
          style: StylesManager.textStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Opacity(
          opacity: 0.5,
          child: Text(
            '($count)',
            style: StylesManager.textStyle14,
          ),
        ),
      ],
    );
  }
}
