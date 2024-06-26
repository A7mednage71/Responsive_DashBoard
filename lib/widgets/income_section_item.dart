import 'package:flutter/material.dart';
import 'package:nag/models/chat_item_model.dart';
import 'package:nag/utils/app_styles.dart';

class IncomeListTileItem extends StatelessWidget {
  const IncomeListTileItem({
    super.key,
    required this.chatItemModel,
  });
  final ChatItemModel chatItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 12,
        width: 12,
        decoration: BoxDecoration(
          color: chatItemModel.color,
          shape: BoxShape.circle,
        ),
      ),
      title: Text(chatItemModel.title, style: AppStyles.regular16),
      trailing: Text(chatItemModel.percent,
          style: AppStyles.medium16.copyWith(color: const Color(0xff208CC8))),
    );
  }
}
