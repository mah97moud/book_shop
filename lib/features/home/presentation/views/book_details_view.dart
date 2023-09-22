import 'package:book_shop/features/home/presentation/manager/similler_books_cubit/similler_books_cubit.dart';
import 'package:book_shop/features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:book_shop/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/volume_model/book.dart';


class BookDetailsView extends StatefulWidget {
  const BookDetailsView({Key? key, required this.book}) : super(key: key);
  final Book book;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<SimillerBooksCubit>(context).fetchSimillerBooks(
        category: widget.book.volumeInfo?.categories?.first ?? '');
  }

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
