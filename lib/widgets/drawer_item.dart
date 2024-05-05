import 'package:flutter/material.dart';
import 'package:nag/models/drawer_model.dart';
import 'package:nag/widgets/active_drawer_item.dart';
import 'package:nag/widgets/inactive_draweritem.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.model, required this.iSactive});
  final DrawerItemModel model;
  final bool iSactive;
  @override
  Widget build(BuildContext context) {
    return iSactive
        ? ActiveDrawerItem(model: model)
        : InactiveDrawerItem(model: model);
  }
}
