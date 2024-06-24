import 'package:flutter/material.dart';
import 'package:nag/widgets/all_expenses.dart';
import 'package:nag/widgets/quick_invoice_widget.dart';

class AllExpancesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpancesAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpences(),
        SizedBox(
          height: 24,
        ),
        QuickInvoiceWidget(),
      ],
    );
  }
}
