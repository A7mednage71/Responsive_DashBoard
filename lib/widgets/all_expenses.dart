import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nag/utils/app_images.dart';
import 'package:nag/utils/app_styles.dart';

class AllExpences extends StatelessWidget {
  const AllExpences({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "All Expenses",
                style: AppStyles.semiBold20,
              ),
              SvgPicture.asset(Assets.imageAllExpensesheaderButtom),
            ],
          )
        ],
      ),
    );
  }
}
