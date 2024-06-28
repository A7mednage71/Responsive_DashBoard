import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpancesItemHeader extends StatelessWidget {
  const AllExpancesItemHeader({
    super.key,
    required this.image,
    required this.isactive,
  });
  final String image;
  final bool isactive;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: CircleAvatar(
            radius: 30,
            backgroundColor:
                isactive ? const Color(0xff5FBEF3) : const Color(0xffFAFAFA),
            child: SvgPicture.asset(
              image,
              color:
                  isactive ? const Color(0xffFFFFFF) : const Color(0xff4EB7F2),
            ),
          ),
        ),
        Icon(
          Icons.arrow_forward_ios,
          color: isactive ? const Color(0xffFFFFFF) : const Color(0xff064061),
        ),
      ],
    );
  }
}
