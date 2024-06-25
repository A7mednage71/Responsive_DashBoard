import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nag/utils/app_styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text("Transaction History", style: AppStyles.semiBold20),
        TextButton(
          onPressed: () {},
          child: Text("See all",
              style:
                  AppStyles.medium16.copyWith(color: const Color(0xff4EB7F2))),
        )
      ],
    );
  }
}
