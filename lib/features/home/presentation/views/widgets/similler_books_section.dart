import 'package:flutter/material.dart';

import '../../../../../core/utils/resources/styles_manager.dart';
import 'similar_book_list_view.dart';

class SimillerBooksSection extends StatelessWidget {
  const SimillerBooksSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: StylesManager.textStyle14.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 16.0),
        const SimilarBookListView(),
        const SizedBox(height: 40.0),
      ],
    );
  }
}
