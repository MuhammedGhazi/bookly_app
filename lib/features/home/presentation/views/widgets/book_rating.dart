import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_bookly/core/utils/styles.dart';

class BookRatng extends StatelessWidget {
  const BookRatng({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 6.3,
        ),
        const Text(
          "4.8",
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 4.3,
        ),
        Text(
          "(2390)",
          style: Styles.textStyle14.copyWith(color: Color(0xff70707070)),
        ),
      ],
    );
  }
}
