import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils/styles.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/custom_book_item.dart';

import 'books_action.dart';
import 'custom_book_details_app_bar.dart';
import 'similar_books_list_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const CustomBookDetailsAppBar(),
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
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: BooksAction(),
            ),
            const SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "you can also like",
                style: Styles.textStyle16
                    .copyWith(fontWeight: FontWeight.w600, color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const SimilarBooksListView()
          ],
        ),
      )),
    );
  }
}
