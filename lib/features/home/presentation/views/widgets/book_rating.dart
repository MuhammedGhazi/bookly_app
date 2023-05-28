import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_bookly/core/utils/styles.dart';

class BookRatng extends StatelessWidget {
  const BookRatng({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.spaceEvenly,
  });
  final MainAxisAlignment mainAxisAlignment; // = MainAxisAlignment.start;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: const [
        Icon(
          FontAwesomeIcons.solidStar,
          size: 14,
          color: Color(0xffFFDD4F),
        ),
        SizedBox(
          width: 6.3,
        ),
        Text(
          "4.8",
          style: Styles.textStyle16,
        ),
        SizedBox(
          width: 4.3,
        ),
        Opacity(
          opacity: .50,
          child: Text(
            "(2390)",
            style: Styles.textStyle14,
          ),
        ),
      ],
    );
  }
}
