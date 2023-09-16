import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/resources/assets_manager.dart';

class CustomAppLogo extends StatelessWidget {
  const CustomAppLogo({
    super.key,
    this.height = 18.0,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      AssetsManager.logo,
      height: height,
      colorFilter: const ColorFilter.mode(
        Colors.white,
        BlendMode.dstIn,
      ),
      
    );
  }
}
