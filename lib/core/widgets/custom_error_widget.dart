import 'package:book_shop/core/utils/resources/styles_manager.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({Key? key, required this.errMessage})
      : super(key: key);

  final String errMessage;

  @override
  Widget build(BuildContext context) {
    return Text(
      errMessage,
      style: StylesManager.textStyle18,
      textAlign: TextAlign.center,
    );
  }
}
