import 'package:flutter/material.dart';

import '../../../../../core/utils/resources/styles_manager.dart';

class SectionTitleText extends StatelessWidget {
  const SectionTitleText(
    this.title, {
    super.key,
  });
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title ?? '',
      style: StylesManager.textStyle18,
    );
  }
}
