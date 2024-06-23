import 'package:flutter/material.dart';
import 'package:nag/models/all_expances_items_model.dart';
import 'package:nag/utils/app_images.dart';
import 'package:nag/widgets/all_expences_item.dart';
import 'package:nag/widgets/is_active_expances_item.dart';

class AllExpancesItemBody extends StatelessWidget {
  const AllExpancesItemBody({
    super.key,
  });

  static List<AllExpancesItemsModel> items = [
    AllExpancesItemsModel(
      image: Assets.imageBalance,
      title: "Balance",
      date: "April 2024",
      price: r"$20,129",
    ),
    AllExpancesItemsModel(
      image: Assets.imageIncome,
      title: "Income",
      date: "june 2016",
      price: r"$20,000",
    ),
    AllExpancesItemsModel(
        image: Assets.imageExpences,
        title: "Expences",
        date: "june 2024",
        price: r"$38,000")
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
        children: items.asMap().entries.map(
      (e) {
        int index = e.key;
        var value = e.value;

        if (index == 1) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: AllExpancesItem(
                iSactive: true,
                expancesItemsModel: value,
              ),
            ),
          );
        } else {
          return Expanded(
              child: AllExpancesItem(
            expancesItemsModel: value,
            iSactive: false,
          ));
        }
      },
    ).toList());
  }
}
