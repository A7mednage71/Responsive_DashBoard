import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nag/utils/app_images.dart';
import 'package:nag/utils/app_styles.dart';

class AllExpencesHeader extends StatelessWidget {
  const AllExpencesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "All Expenses",
          style: AppStyles.semiBold20,
        ),
        SvgPicture.asset(Assets.imageAllExpensesheaderButtom),
      ],
    );
  }
}
