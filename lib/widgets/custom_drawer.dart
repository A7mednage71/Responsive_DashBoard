import 'package:flutter/material.dart';
import 'package:nag/models/drawer_model.dart';
import 'package:nag/utils/app_images.dart';
import 'package:nag/widgets/drawer_item.dart';
import 'package:nag/widgets/user_info_listTile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  static List<DrawerItemModel> drawerItems = [
    DrawerItemModel(title: "Dashboard", image: Assets.imageDashboard),
    DrawerItemModel(title: "My Transaction", image: Assets.imageMyTransaction),
    DrawerItemModel(title: "Statistics", image: Assets.imageStatistics),
    DrawerItemModel(title: "Wallet Account", image: Assets.imageWalletAccount),
    DrawerItemModel(title: "My Investments", image: Assets.imageMyinvestments),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 28),
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
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: drawerItems.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 20),
                child: DrawerItem(
                  model: drawerItems[index],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
