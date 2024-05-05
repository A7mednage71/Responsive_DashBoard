import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nag/models/drawer_model.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.model});
  final DrawerItemModel model;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(model.image),
      title: Text(model.title),
    );
  }
}
