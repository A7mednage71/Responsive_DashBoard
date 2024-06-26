import 'package:flutter/material.dart';
import 'package:nag/widgets/income_section.dart';
import 'package:nag/widgets/mycard_and_transaction_history_section.dart';

class MycardAndIncomeAndTransactionSection extends StatelessWidget {
  const MycardAndIncomeAndTransactionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MyCardAndTransactionHistorySection(),
        SizedBox(height: 24),
        Expanded(child: IncomeSection()),
      ],
    );
  }
}
