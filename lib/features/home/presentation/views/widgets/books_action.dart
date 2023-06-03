import 'package:flutter/material.dart';
import 'package:my_bookly/core/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Expanded(
            child: CustomButton(
                textChild: "19.99€",
                colorText: Colors.black,
                backgroundColor: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    topLeft: Radius.circular(10),
                    bottomRight: Radius.zero,
                    topRight: Radius.zero))),
        Expanded(
            child: CustomButton(
                fontSize: 16,
                textChild: "Free preview",
                colorText: Colors.white,
                backgroundColor: Color(0xffef8262),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.zero,
                    topLeft: Radius.zero,
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(10)))),
      ],
    );
  }
}
