import 'package:book_shop/core/utils/resources/styles_manager.dart';
import 'package:book_shop/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:book_shop/features/home/presentation/views/widgets/horizotal_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 22.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(),
            const HorizontalHomeListView(),
            const SizedBox(height: 40.0,),
            Text(
              'Best Seller',
              style: StylesManager.titleMedium,
            ),
          ],
        ),
      ),
    );
  }
}
