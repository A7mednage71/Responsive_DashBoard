import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nag/models/drawer_model.dart';
import 'package:nag/utils/app_styles.dart';

class InactiveDrawerItem extends StatelessWidget {
  const InactiveDrawerItem({
    super.key,
    required this.model,
  });

  final DrawerItemModel model;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: SvgPicture.asset(model.image),
      title: Text(
        model.title,
        style: AppStyles.regular16,
      ),
    );
  }
}
