import 'package:book_shop/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:book_shop/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:book_shop/features/home/presentation/views/widgets/horizotal_list_view.dart';
import 'package:flutter/material.dart';

import 'best_seller_text.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                HorizontalHomeListView(),
                SizedBox(
                  height: 40.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: SectionTitleText(
                    'Best Seller',
                  ),
                ),
                SizedBox(height: 23),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: BestSellerListView(),
          ),
        ],
      ),
    );
  }
}

