import 'package:flutter/material.dart';
import 'package:nag/utils/app_styles.dart';
import 'package:nag/widgets/dot_indicator_list.dart';
import 'package:nag/widgets/my_card_page_view.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 24),
        Text("My card", style: AppStyles.semiBold20),
        SizedBox(height: 19),
        MyCardPageView(),
        SizedBox(height: 19),
        DotIndicatorList(),
        Divider(color: Color(0xffF1F1F1), height: 40),
      ],
    );
  }
}
