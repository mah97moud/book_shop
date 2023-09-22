import 'package:book_shop/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../data/models/volume_model/book.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final book = GoRouterState.of(context).extra as Book;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              '${book.saleInfo?.listPrice?.amount == 0 ? 'Free' : ' ${book.saleInfo?.listPrice?.amount ?? 'Free'}'} '
              '${book.saleInfo?.listPrice?.currencyCode ?? ''}',
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
      ),
    );
  }
}
