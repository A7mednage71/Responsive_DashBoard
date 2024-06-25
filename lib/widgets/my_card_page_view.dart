import 'package:flutter/material.dart';
import 'package:nag/widgets/myCard.dart';

class MyCardPageView extends StatelessWidget {
  const MyCardPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: PageView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return const MyCard();
        },
      ),
    );
  }
}
