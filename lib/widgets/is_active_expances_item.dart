import 'package:flutter/material.dart';
import 'package:nag/models/all_expances_items_model.dart';
import 'package:nag/utils/app_styles.dart';
import 'package:nag/widgets/all_expances_item_header.dart';

class IsActiveAllExpencesitem extends StatelessWidget {
  const IsActiveAllExpencesitem({super.key, required this.expancesItemsModel});
  final AllExpancesItemsModel expancesItemsModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: const Color(0xff4EB7F2),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 1, color: const Color(0xff4EB7F2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpancesItemHeader(
            isactive: true,
            image: expancesItemsModel.image,
          ),
          const SizedBox(
            height: 34,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              expancesItemsModel.title,
              style:
                  AppStyles.semiBold16(context).copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              expancesItemsModel.date,
              style: AppStyles.regular14(context)
                  .copyWith(color: const Color(0xffFAFAFA)),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              expancesItemsModel.price,
              style:
                  AppStyles.semiBold24(context).copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
