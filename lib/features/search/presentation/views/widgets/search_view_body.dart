import 'package:book_shop/core/utils/resources/constants.dart';
import 'package:flutter/material.dart';

import 'custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
const SearchViewBody({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return const Padding(
      padding: kPaddingHorizontal30,
      child: Column(
        children: [
          CustomSearchTextField(),
        ],
      ),
    );
  }
}