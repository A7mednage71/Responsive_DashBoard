import 'package:flutter/material.dart';
import 'package:nag/utils/app_styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Transaction History", style: AppStyles.semiBold20),
            TextButton(
              onPressed: () {},
              child: Text("See all",
                  style: AppStyles.medium16
                      .copyWith(color: const Color(0xff4EB7F2))),
            )
          ],
        ),
        const SizedBox(height: 16),
        Text("13 April 2022",
            style: AppStyles.medium16.copyWith(color: const Color(0xffAAAAAA))),
        const SizedBox(height: 16),
      ],
    );
  }
}
