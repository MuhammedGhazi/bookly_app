// ignore: file_names
import 'package:flutter/material.dart';

import 'package:my_bookly/core/utils/styles.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/best_seller_list_view_item.dart';

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
        children: const [
          CustomAppBar(),
          FeaturedBooksListView(),
          Text("Best Seller", style: Styles.textStyle18),
          BestSellerListViewItem()
        ],
      ),
    );
  }
}
