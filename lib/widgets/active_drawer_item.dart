import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nag/models/drawer_model.dart';
import 'package:nag/utils/app_styles.dart';

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
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
        style: AppStyles.bold16,
      ),
      trailing: Container(
        width: 3,
        color: const Color(0xff4EB7F2),
      ),
    );
  }
}
