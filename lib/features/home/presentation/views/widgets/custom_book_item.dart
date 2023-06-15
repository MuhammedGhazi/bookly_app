import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils/assets.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({
    super.key,
    required this.imageUrl,
  });
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        width: MediaQuery.of(context).size.height * .25 * 2.7 / 4,
        height: MediaQuery.of(context).size.height * .25,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(imageUrl), //AssetImage(AssetsData.testImage),
          ),
        ),
      ),
    );
  }
}
