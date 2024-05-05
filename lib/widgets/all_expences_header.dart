import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nag/utils/app_styles.dart';
import 'package:nag/widgets/range_options.dart';

class AllExpencesHeader extends StatelessWidget {
  const AllExpencesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "All Expenses",
          style: AppStyles.semiBold20,
        ),
        RangeOptions()
      ],
    );
  }
}
