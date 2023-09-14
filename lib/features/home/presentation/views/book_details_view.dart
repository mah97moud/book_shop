import 'package:book_shop/features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:book_shop/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomBookDetailsAppBar(),
      body: SafeArea(
        child: BookDetailsViewBody(),
      ),
    );
  }
}
