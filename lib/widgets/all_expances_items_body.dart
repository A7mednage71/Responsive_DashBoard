import 'package:flutter/material.dart';
import 'package:nag/models/all_expances_items_model.dart';
import 'package:nag/utils/app_images.dart';
import 'package:nag/widgets/all_expences_item.dart';

class AllExpancesItemBody extends StatefulWidget {
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
  State<AllExpancesItemBody> createState() => _AllExpancesItemBodyState();
}

class _AllExpancesItemBodyState extends State<AllExpancesItemBody> {
  int iSselected = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
        children: AllExpancesItemBody.items.asMap().entries.map(
      (e) {
        int index = e.key;
        var value = e.value;

        if (index == 1) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  if (iSselected != index) {
                    setState(() {
                      iSselected = index;
                    });
                  }
                },
                child: AllExpancesItem(
                  iSactive: iSselected == index,
                  expancesItemsModel: value,
                ),
              ),
            ),
          );
        } else {
          return Expanded(
              child: GestureDetector(
            onTap: () {
              if (iSselected != index) {
                setState(() {
                  iSselected = index;
                });
              }
            },
            child: AllExpancesItem(
              expancesItemsModel: value,
              iSactive: iSselected == index,
            ),
          ));
        }
      },
    ).toList());
  }
}
