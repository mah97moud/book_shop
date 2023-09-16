import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    Key? key,
    required this.imageUrl,
    this.aspectRatio,
  }) : super(key: key);

  final String? imageUrl;
  final double? aspectRatio;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio ?? 5.5 / 8,
      child: Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: CachedNetworkImage(
          imageUrl: imageUrl ?? '',
          fit: BoxFit.fill,
          // placeholder: (context, url) {
          //   return const CustomLoadingIndicator();
          // },
          errorWidget: (context, url, error) {
            return const Icon(FontAwesome.image);
          },
        ),
      ),
    );
  }
}
