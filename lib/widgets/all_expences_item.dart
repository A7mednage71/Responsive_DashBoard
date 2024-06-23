import 'package:flutter/material.dart';
import 'package:nag/models/all_expances_items_model.dart';
import 'package:nag/widgets/is_active_expances_item.dart';
import 'package:nag/widgets/non_active_expances_item.dart';

class AllExpancesItem extends StatelessWidget {
  const AllExpancesItem({
    super.key,
    required this.iSactive,
    required this.expancesItemsModel,
  });
  final bool iSactive;
  final AllExpancesItemsModel expancesItemsModel;
  @override
  Widget build(BuildContext context) {
    return iSactive
        ? IsActiveAllExpencesitem(expancesItemsModel: expancesItemsModel)
        : NonActiveAllExpencesitem(expancesItemsModel: expancesItemsModel);
  }
}
