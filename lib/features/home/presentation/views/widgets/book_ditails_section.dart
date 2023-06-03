import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils/styles.dart';

import 'book_rating.dart';
import 'custom_book_item.dart';

class BookDitailsSection extends StatelessWidget {
  const BookDitailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * .21,
            right: MediaQuery.of(context).size.width * .11,
            top: 10,
          ),
          child: const CustomBookItem(),
        ),
        const Text(
          "The Jungle Book",
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            "Rudyard Kipling",
            style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRatng(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
