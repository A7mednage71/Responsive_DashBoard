import 'package:flutter/material.dart';
import 'package:nag/models/drawer_model.dart';
import 'package:nag/utils/app_images.dart';
import 'package:nag/widgets/drawer_item.dart';
import 'package:nag/widgets/drawer_items_listview.dart';
import 'package:nag/widgets/inactive_draweritem.dart';
import 'package:nag/widgets/user_info_listTile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 28, right: 20),
      child: Column(
        children: [
          const Card(
            color: Color(0xffFAFAFA),
            elevation: 0,
            child: UserInfoListTile(
              image: Assets.imageAvatar1,
              title: "Lekan Okeowo",
              subtitle: "demo@gmail.com",
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const DrawerItemsListView(),
          const Spacer(),
          InactiveDrawerItem(
              model: DrawerItemModel(
                  title: "Setting system", image: Assets.imageSetting)),
          InactiveDrawerItem(
              model: DrawerItemModel(
                  title: "Logout account", image: Assets.imageLogout)),
          const SizedBox(
            height: 48,
          )
        ],
      ),
    );
  }
}
