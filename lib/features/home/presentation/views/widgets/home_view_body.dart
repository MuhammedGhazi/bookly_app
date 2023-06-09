// ignore: file_names
import 'package:flutter/material.dart';

import 'package:my_bookly/core/utils/styles.dart';

import 'best_seller_list_view.dart';
import 'custom_app_bar.dart';

import 'featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            CustomAppBar(),
            FeaturedBooksListView(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text("Best Seller", style: Styles.textStyle18),
            ),
          ],
        )),
        const SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: BestSellerListView(),
          ),
        )
      ],
    );
  }
}
