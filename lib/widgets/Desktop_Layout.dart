import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nag/utils/app_styles.dart';
import 'package:nag/widgets/Transaction_history_header.dart';
import 'package:nag/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:nag/widgets/custom_backgroud_container.dart';
import 'package:nag/widgets/custom_drawer.dart';
import 'package:nag/widgets/dot_indicator.dart';
import 'package:nag/widgets/dot_indicator_list.dart';
import 'package:nag/widgets/my_card_page_view.dart';
import 'package:nag/widgets/my_card_section.dart';

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
          child: Padding(
            padding: EdgeInsets.only(top: 40),
            child: CustomBackgroundContainer(
              child: Column(
                children: [
                  MyCardSection(),
                  TransactionHistoryHeader(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
