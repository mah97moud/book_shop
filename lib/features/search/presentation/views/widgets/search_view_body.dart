import 'package:book_shop/core/utils/resources/constants.dart';
import 'package:book_shop/features/home/presentation/views/widgets/best_seller_text.dart';
import 'package:book_shop/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: kPaddingHorizontal30,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // CustomSearchTextField(),
          // SizedBox(height: 20.0),
          SectionTitleText('Search Result'),
          SizedBox(height: 20.0),
          SearchResultListView(),
        ],
      ),
    );
  }
}
