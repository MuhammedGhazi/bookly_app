import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.colorText = Colors.black,
    this.backgroundColor = Colors.white,
    this.borderRadius,
    required this.textChild,
    this.fontSize,
  });
  final String textChild;
  final Color colorText;
  final Color backgroundColor;
  final BorderRadius? borderRadius;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(12)),
          ),
          onPressed: () {},
          child: Text(
            textChild,
            style: Styles.textStyle18.copyWith(
              color: colorText,
              fontWeight: FontWeight.w900,
            ),
          )),
    );
  }
}
