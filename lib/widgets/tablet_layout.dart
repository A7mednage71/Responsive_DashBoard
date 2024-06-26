import 'package:flutter/material.dart';
import 'package:nag/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:nag/widgets/custom_drawer.dart';
import 'package:nag/widgets/mycard_income_transaction_section.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 25,
        ),
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
            child: Column(
              children: [
                AllExpancesAndQuickInvoiceSection(),
                MycardAndIncomeAndTransactionSection(),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 25,
        ),
      ],
    );
  }
}
