import 'package:book_shop/core/utils/resources/constants.dart';
import 'package:book_shop/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:book_shop/features/home/presentation/views/widgets/similler_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: kPaddingHorizontal30,
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BookDetailsSection(),
                Expanded(child: SizedBox(height: 50.0)),
                SimillerBooksSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
