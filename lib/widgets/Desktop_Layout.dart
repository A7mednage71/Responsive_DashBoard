import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nag/utils/app_styles.dart';
import 'package:nag/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:nag/widgets/custom_backgroud_container.dart';
import 'package:nag/widgets/custom_drawer.dart';
import 'package:nag/widgets/income_section.dart';
import 'package:nag/widgets/income_section_header.dart';
import 'package:nag/widgets/mycard_and_transaction_history_section.dart';
import 'package:nag/widgets/range_options.dart';

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
        // Expanded(
        //   child: MyCardAndTransactionHistorySection(),
        // ),
        Expanded(child: IncomeSection())
      ],
    );
  }
}
