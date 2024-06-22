import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nag/models/all_expances_items_model.dart';


class AllExpancesItemHeader extends StatelessWidget {
  const AllExpancesItemHeader({
    super.key,
    required this.expancesItemsModel,
  });
  final AllExpancesItemsModel expancesItemsModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: const Color(0xffFAFAFA),
          child: SvgPicture.asset(expancesItemsModel.image),
        ),
        const Icon(Icons.arrow_forward_ios),
      ],
    );
  }
}
