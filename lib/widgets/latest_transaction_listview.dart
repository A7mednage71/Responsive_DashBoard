import 'package:flutter/material.dart';
import 'package:nag/models/user_info_model.dart';
import 'package:nag/utils/app_images.dart';
import 'package:nag/widgets/user_info_listTile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static List<UserInfoModel> items = [
    UserInfoModel(
        image: Assets.imageFrame1,
        title: "Madrani Andi",
        subtitle: "Madraniadi20@gmail"),
    UserInfoModel(
        image: Assets.imageFrame2,
        title: "Madrani Andi",
        subtitle: "Madraniadi20@gmail"),
    UserInfoModel(
        image: Assets.imageFrame1,
        title: "Madrani Andi",
        subtitle: "Madraniadi20@gmail"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return IntrinsicWidth(
            child: UserInfoListTile(
              userInfo: items[index],
            ),
          );
        },
      ),
    );
  }
}
