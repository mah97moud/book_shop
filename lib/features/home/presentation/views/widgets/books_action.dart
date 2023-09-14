import 'package:book_shop/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            '19.99€',
            onPressed: () {},
            backgroundColor: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16.0),
              bottomLeft: Radius.circular(16.0),
            ),
            textColor: Colors.black,
          ),
        ),
        Expanded(
          child: CustomButton(
            'Free preview',
            onPressed: () {},
            backgroundColor: const Color(0xFFEF8262),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(16.0),
              bottomRight: Radius.circular(16.0),
            ),
            textColor: Colors.white,
            fontSize: 16.0,
          ),
        ),
      ],
    );
  }
}
