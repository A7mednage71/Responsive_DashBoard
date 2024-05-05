import 'package:flutter/material.dart';
import 'package:nag/widgets/all_expences_header.dart';

class AllExpences extends StatelessWidget {
  const AllExpences({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
        ],
      ),
    );
  }
}
