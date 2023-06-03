import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils/styles.dart';

import 'similar_books_list_view.dart';

class SimilarBookSection extends StatelessWidget {
  const SimilarBookSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "you can also like",
          style: Styles.textStyle16
              .copyWith(fontWeight: FontWeight.w600, color: Colors.white),
        ),
        const SizedBox(
          height: 16,
        ),
        const SimilarBooksListView(),
      ],
    );
  }
}
