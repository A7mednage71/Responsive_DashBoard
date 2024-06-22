import 'package:flutter/material.dart';
import 'package:nag/models/all_expances_items_model.dart';
import 'package:nag/utils/app_images.dart';
import 'package:nag/widgets/all_expences_item.dart';

class AllExpancesItemBody extends StatelessWidget {
  const AllExpancesItemBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: AllExpencesitem(
          expancesItemsModel: AllExpancesItemsModel(
            image: Assets.imageBalance,
            title: "Balance",
            date: "April 2024",
            price: r"$20,129",
          ),
        )),
        const SizedBox(
          width: 12,
        ),
        Expanded(
            child: AllExpencesitem(
          expancesItemsModel: AllExpancesItemsModel(
            image: Assets.imageIncome,
            title: "Income",
            date: "june 2016",
            price: r"$20,000",
          ),
        )),
        const SizedBox(
          width: 12,
        ),
        Expanded(
            child: AllExpencesitem(
          expancesItemsModel: AllExpancesItemsModel(
              image: Assets.imageExpences,
              title: "Expences",
              date: "june 2024",
              price: r"$38,000"),
        )),
      ],
    );
  }
}
