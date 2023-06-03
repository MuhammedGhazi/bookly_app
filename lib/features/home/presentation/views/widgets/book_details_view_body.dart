import 'package:flutter/material.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/similar_book_section.dart';
import 'book_ditails_section.dart';
import 'books_action.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: const [
                    CustomBookDetailsAppBar(),
                    BookDitailsSection(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: BooksAction(),
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 30,
                      ),
                    ),
                    SimilarBookSection()
                  ],
                )),
          )
        ],
      ),
    );
  }
}
