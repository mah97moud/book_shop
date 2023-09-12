import 'package:book_shop/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class HorizontalHomeListView extends StatelessWidget {
  const HorizontalHomeListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final height = size.height;
    return Container(
      height: height * 0.3,
      padding: const EdgeInsets.symmetric(
        horizontal: 22.0,
        vertical: 10.0,
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: const CustomListViewItem());
        },
      ),
    );
  }
}
