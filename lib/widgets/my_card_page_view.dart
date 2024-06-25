import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:nag/widgets/my_card_Item.dart';

class MyCardPageView extends StatelessWidget {
  const MyCardPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
        children: List.generate(3, (index) {
      return const MyCardItem();
    }));
  }
}
