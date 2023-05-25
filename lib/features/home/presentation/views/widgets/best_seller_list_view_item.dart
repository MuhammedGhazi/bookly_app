import 'package:flutter/material.dart';
import 'package:my_bookly/constants.dart';
import 'package:my_bookly/core/utils/assets.dart';
import 'package:my_bookly/core/utils/styles.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.height * 0.2 * 0.6,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AssetsData.testImage), fit: BoxFit.fill),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    "Harry Potter and  the Goblet of Fire",
                    style:
                        Styles.textStyle20.copyWith(fontFamily: kGtSectraFine),
                    overflow: TextOverflow.clip,
                    maxLines: 2,
                  ),
                ),
                const SizedBox(height: 3),
                const Text(
                  "J.K.Rowling",
                  style: Styles.textStyle14,
                ),
                Row(
                  children: [
                    Text(
                      "19.99 € ",
                      style: Styles.textStyle20
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Icon(Icons.star),
                    const Text("4.8"),
                    const Text(
                      "(2390)",
                    ),
                  ],
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
