import 'package:flutter/material.dart';
import 'package:nag/models/chat_item_model.dart';
import 'package:nag/widgets/income_section_item.dart';

class IncomeChartItemsListView extends StatelessWidget {
  const IncomeChartItemsListView({super.key});

  static List<ChatItemModel> items = [
    ChatItemModel(
        color: const Color(0xff208CC8),
        title: "Design service",
        percent: "40%"),
    ChatItemModel(
        color: const Color(0xff4EB7F2),
        title: "Design product",
        percent: "25%"),
    ChatItemModel(
        color: const Color(0xff064061),
        title: "Product royalti",
        percent: "20%"),
    ChatItemModel(
      color: const Color(0xff208CC8),
      title: "Other",
      percent: "22%",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return IncomeListTileItem(chatItemModel: items[index]);
      },
    );
  }
}
