import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpancesItemHeader extends StatelessWidget {
  const AllExpancesItemHeader({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: const Color(0xffFAFAFA),
          child: SvgPicture.asset(image),
        ),
        const Icon(Icons.arrow_forward_ios),
      ],
    );
  }
}
