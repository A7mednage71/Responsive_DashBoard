import 'package:flutter/material.dart';
import 'package:nag/widgets/all_expances_items_body.dart';
import 'package:nag/widgets/all_expences_header.dart';
import 'package:nag/widgets/custom_backgroud_container.dart';

class AllExpences extends StatelessWidget {
  const AllExpences({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 40),
      child: CustomBackgroundContainer(
        child: Column(
          children: [
            AllExpencesHeader(),
            SizedBox(height: 16),
            AllExpancesItemBody()
          ],
        ),
      ),
    );
  }
}
