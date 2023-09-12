import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../../../../../core/utils/resources/assets_manager.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            AssetsManager.logo,
            height: 18.0,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesome5Solid.search,
            ),
          ),
        ],
      ),
    );
  }
}
