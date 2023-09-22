import 'package:book_shop/features/search/presentation/manager/search_books_bloc/search_books_bloc.dart';
import 'package:book_shop/features/search/presentation/views/widgets/search_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:go_router/go_router.dart';

class SearchView extends SearchDelegate {
  @override
  ThemeData appBarTheme(BuildContext context) {
    final ThemeData theme = Theme.of(context).copyWith(
        appBarTheme: Theme.of(context).appBarTheme.copyWith(
              backgroundColor: Colors.transparent,
            ));
    return theme;
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: InkWell(
          onTap: () {
            final searchBloc = context.read<SearchBooksBloc>();

            searchBloc.add(SearchEvent(searchText: query));
            showResults(context);
          },
          child: const Opacity(
            opacity: 0.7,
            child: Icon(
              FontAwesome.search,
            ),
          ),
        ),
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return Opacity(
      opacity: 0.7,
      child: InkWell(
        onTap: () {
          context.pop();
        },
        child: const Icon(
          FontAwesome.arrow_left,
        ),
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return const SearchViewBody();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return const SearchViewBody();
  }

  // @override
  // Widget build(BuildContext context) {
  //   return BlocProvider(
  //     create: (context) => SearchBooksBloc(
  //       getIt.get(),
  //     ),
  //     child: const Scaffold(
  //       body: SafeArea(child: SearchViewBody()),
  //     ),
  //   );
  // }
}
