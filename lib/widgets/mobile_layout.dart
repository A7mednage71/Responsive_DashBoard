import 'package:flutter/material.dart';
import 'package:nag/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:nag/widgets/mycard_income_transaction_section.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpancesAndQuickInvoiceSection(),
          MycardAndIncomeAndTransactionSection(),
        ],
      ),
    );
  }
}
