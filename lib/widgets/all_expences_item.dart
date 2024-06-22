import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nag/utils/app_images.dart';
import 'package:nag/utils/app_styles.dart';
import 'package:nag/widgets/all_expances_item_header.dart';

class AllExpencesitem extends StatelessWidget {
  const AllExpencesitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 1, color: const Color(0xffF1F1F1)),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpancesItemHeader(),
          SizedBox(
            height: 34,
          ),
          Text(
            "Income",
            style: AppStyles.semiBold16,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "April 2022",
            style: AppStyles.regular14,
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "\$20,129",
            style: AppStyles.semiBold24,
          ),
        ],
      ),
    );
  }
}
