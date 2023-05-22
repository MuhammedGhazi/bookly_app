import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils/assets.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.height * .25 * 2.7 / 4,
      height: MediaQuery.of(context).size.height * .25,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(AssetsData.testImage),
        ),
      ),
    );
  }
}
