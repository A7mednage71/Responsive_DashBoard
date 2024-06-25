import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nag/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:nag/widgets/custom_drawer.dart';
import 'package:nag/widgets/myCard.dart';
import 'package:nag/widgets/my_card_page_view.dart';

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
            SizedBox(
              height: 24,
            ),
            MyCardPageView()
          ],
        ))
      ],
    );
  }
}
