import 'package:book_shop/features/search/presentation/manager/search_books_bloc/search_books_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final searchBloc = context.read<SearchBooksBloc>();
    return TextField(
      onChanged: (text) {
        searchBloc.add(SearchEvent(searchText: text));
      },
      decoration: InputDecoration(
          enabledBorder: buildOutlinedInputBorder(),
          focusedBorder: buildOutlinedInputBorder(),
          hintText: 'search',
          suffixIcon: const Opacity(
            opacity: 0.7,
            child: Icon(
              FontAwesome.search,
            ),
          )),
    );
  }

  OutlineInputBorder buildOutlinedInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.0),
      borderSide: const BorderSide(
        color: Colors.white,
      ),
    );
  }
}
