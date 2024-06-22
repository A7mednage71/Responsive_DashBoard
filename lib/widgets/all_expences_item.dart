import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nag/utils/app_images.dart';
import 'package:nag/utils/app_styles.dart';

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: const Color(0xffFAFAFA),
                child: SvgPicture.asset(Assets.imageIncome),
              ),
              const Icon(Icons.arrow_forward_ios),
            ],
          ),
          const SizedBox(
            height: 34,
          ),
          const Text(
            "Income",
            style: AppStyles.semiBold16,
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            "April 2022",
            style: AppStyles.regular14,
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            "\$20,129",
            style: AppStyles.semiBold24,
          ),
        ],
      ),
    );
  }
}
