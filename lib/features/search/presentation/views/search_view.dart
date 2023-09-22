import 'package:book_shop/core/utils/service_locator.dart';
import 'package:book_shop/features/search/presentation/manager/search_books_bloc/search_books_bloc.dart';
import 'package:book_shop/features/search/presentation/views/widgets/search_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchBooksBloc(
        getIt.get(),
      ),
      child: const Scaffold(
        body: SafeArea(child: SearchViewBody()),
      ),
    );
  }
}
