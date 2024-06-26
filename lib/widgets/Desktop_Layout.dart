import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nag/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:nag/widgets/custom_drawer.dart';
import 'package:nag/widgets/income_section.dart';
import 'package:nag/widgets/mycard_and_transaction_history_section.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({
    super.key,
  });

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
          flex: 2,
          child: AllExpancesAndQuickInvoiceSection(),
        ),
        SizedBox(
          width: 25,
        ),
        Expanded(
            child: Column(
          children: [
            // Expanded(
            //   flex: 3,
            //   child: MyCardAndTransactionHistorySection(),
            // ),
            SizedBox(height: 24),
            Expanded(
              child: IncomeSection(),
            ),
          ],
        ))
      ],
    );
  }
}
