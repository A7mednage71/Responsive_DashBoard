import 'package:flutter/material.dart';
import 'package:nag/models/all_expances_items_model.dart';
import 'package:nag/utils/app_styles.dart';
import 'package:nag/widgets/all_expances_item_header.dart';

class AllExpencesitem extends StatelessWidget {
  const AllExpencesitem({super.key, required this.expancesItemsModel});
  final AllExpancesItemsModel expancesItemsModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 1, color: const Color(0xffF1F1F1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpancesItemHeader(
            image: expancesItemsModel.image,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            expancesItemsModel.title,
            style: AppStyles.semiBold16,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            expancesItemsModel.date,
            style: AppStyles.regular14,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            expancesItemsModel.price,
            style: AppStyles.semiBold24,
          ),
        ],
      ),
    );
  }
}
