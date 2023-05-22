// ignore: file_names
import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils/assets.dart';

import 'custom_app_bar.dart';
import 'custom_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [CustomAppBar(), CustomListViewItem()],
    );
  }
}
