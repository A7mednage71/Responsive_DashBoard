import 'package:flutter/material.dart';
import 'package:nag/utils/app_images.dart';
import 'package:nag/widgets/user_info_listTile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        UserInfoListTile(
          image: Assets.imageAvatar1,
          title: "Lekan Okeowo",
          subtitle: "demo@gmail.com",
        ),
      ],
    );
  }
}
