import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
// import 'package:my_bookly/core/utils/assets.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({
    super.key,
    required this.imageUrl,
  });
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: AspectRatio(
          aspectRatio: 2.7 / 4,
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            placeholder: (context, url) =>
                const Center(child: CircularProgressIndicator()),
            fit: BoxFit.fill,
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}
