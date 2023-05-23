import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 80, bottom: 40),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 24,
          ),
          const Spacer(),
          const Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 24,
          ),
        ],
      ),
    );
  }
}
