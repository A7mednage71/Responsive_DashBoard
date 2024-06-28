import 'package:flutter/material.dart';
import 'package:nag/models/all_expances_items_model.dart';
import 'package:nag/utils/app_images.dart';
import 'package:nag/widgets/all_expences_item.dart';

class AllExpancesItemBody extends StatefulWidget {
  const AllExpancesItemBody({
    super.key,
  });

  @override
  State<AllExpancesItemBody> createState() => _AllExpancesItemBodyState();
}

class _AllExpancesItemBodyState extends State<AllExpancesItemBody> {
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
  int iSselected = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              if (iSselected != 0) {
                setState(() {
                  iSselected = 0;
                });
              }
            },
            child: AllExpancesItem(
              iSactive: iSselected == 0,
              expancesItemsModel: items[0],
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: GestureDetector(
            onTap: () {
              if (iSselected != 1) {
                setState(() {
                  iSselected = 1;
                });
              }
            },
            child: AllExpancesItem(
              iSactive: iSselected == 1,
              expancesItemsModel: items[1],
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: GestureDetector(
            onTap: () {
              if (iSselected != 2) {
                setState(() {
                  iSselected = 2;
                });
              }
            },
            child: AllExpancesItem(
              iSactive: iSselected == 2,
              expancesItemsModel: items[2],
            ),
          ),
        ),
      ],
    );
    // return Row(
    //     children: AllExpancesItemBody.items.asMap().entries.map(
    //   (e) {
    //     int index = e.key;
    //     var value = e.value;
    //     return Expanded(
    //       child: Padding(
    //         padding: EdgeInsets.symmetric(horizontal: index == 1 ? 20 : 0),
    //         child: GestureDetector(
    //           onTap: () {
    //             if (iSselected != index) {
    //               setState(() {
    //                 iSselected = index;
    //               });
    //             }
    //           },
    //           child: AllExpancesItem(
    //             iSactive: iSselected == index,
    //             expancesItemsModel: value,
    //           ),
    //         ),
    //       ),
    //     );
    //   },
    // ).toList());
  }
}
