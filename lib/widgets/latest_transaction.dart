import 'package:flutter/material.dart';
import 'package:nag/utils/app_styles.dart';
import 'package:nag/widgets/latest_transaction_listview.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 24),
        Text("Latest Transaction", style: AppStyles.medium16(context)),
        const SizedBox(height: 12),
        const LatestTransactionListView()
      ],
    );
  }
}
