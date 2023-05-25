// ignore: file_names
import 'package:flutter/material.dart';
import 'package:my_bookly/constants.dart';

import 'package:my_bookly/core/utils/assets.dart';

import 'package:my_bookly/core/utils/styles.dart';

import 'custom_app_bar.dart';

import 'featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          Text("Best Seller", style: Styles.textStyle18),
          BestSellerListViewItem()
        ],
      ),
    );
  }
}

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
                  child: const Text(
                    "Harry Potter and  the Goblet of Fire",
                    style: Styles.textStyle20,
                    overflow: TextOverflow.clip,
                    maxLines: 2,
                  ),
                ),
                const Text("J.K.Rowling"),
                Row(
                  children: const [
                    Text("1.99 € "),
                    Icon(Icons.star),
                    Text("4.8"),
                    Text(
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
