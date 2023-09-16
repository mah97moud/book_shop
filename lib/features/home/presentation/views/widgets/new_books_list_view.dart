import 'package:book_shop/features/home/presentation/views/widgets/book_item.dart';
import 'package:flutter/material.dart';

class NewBooksListView extends StatelessWidget {
  const NewBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: BookItem(),
          );
        },
      ),
    );
  }
}
