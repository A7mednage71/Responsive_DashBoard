import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nag/utils/app_images.dart';

class AllExpancesItemHeader extends StatelessWidget {
  const AllExpancesItemHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: const Color(0xffFAFAFA),
          child: SvgPicture.asset(Assets.imageIncome),
        ),
        const Icon(Icons.arrow_forward_ios),
      ],
    );
  }
}
