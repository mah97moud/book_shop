
import 'package:book_shop/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:book_shop/features/home/presentation/views/widgets/horizotal_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
const HomeViewBody({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return  const SafeArea(
      child: Column(
        children: [
          CustomAppBar(),
          HorizontalHomeListView(),
        ],
      ),
    );
  }
}