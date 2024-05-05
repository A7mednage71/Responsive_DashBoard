import 'package:flutter/material.dart';
import 'package:nag/models/drawer_model.dart';
import 'package:nag/utils/app_images.dart';
import 'package:nag/widgets/drawer_item.dart';
import 'package:nag/widgets/drawer_items_listview.dart';
import 'package:nag/widgets/user_info_listTile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20, right: 28),
      child: Column(
        children: [
          Card(
            color: Color(0xffFAFAFA),
            elevation: 0,
            child: UserInfoListTile(
              image: Assets.imageAvatar1,
              title: "Lekan Okeowo",
              subtitle: "demo@gmail.com",
            ),
          ),
          SizedBox(
            height: 8,
          ),
          DrawerItemsListView(),
        ],
      ),
    );
  }
}
