import 'package:book_shop/features/search/presentation/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../../../../../core/widgets/custom_app_logo.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CustomAppLogo(),
          IconButton(
            onPressed: () {
              // context.pushNamed(RouteNames.searchView);

              showSearch(
                context: context,
                delegate: SearchView(),
              );
            },
            icon: const Icon(
              FontAwesome5Solid.search,
              size: 18.0,
            ),
          ),
        ],
      ),
    );
  }
}
