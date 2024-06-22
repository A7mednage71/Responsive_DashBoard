import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nag/widgets/all_expences_header.dart';
import 'package:nag/widgets/all_expences_item.dart';

class AllExpences extends StatelessWidget {
  const AllExpences({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Column(
          children: [
            AllExpencesHeader(),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Expanded(child: AllExpencesitem()),
                SizedBox(
                  width: 12,
                ),
                Expanded(child: AllExpencesitem()),
                SizedBox(
                  width: 12,
                ),
                Expanded(child: AllExpencesitem()),
              ],
            )
          ],
        ),
      ),
    );
  }
}
