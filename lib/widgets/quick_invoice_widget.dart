import 'package:flutter/material.dart';
import 'package:nag/widgets/custom_backgroud_container.dart';
import 'package:nag/widgets/latest_transaction.dart';
import 'package:nag/widgets/quick_invoice_header.dart';
import 'package:nag/widgets/title_text_field.dart';

class QuickInvoiceWidget extends StatelessWidget {
  const QuickInvoiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          LatestTransaction(),
          Divider(height: 48),
          TitleTextField(title: "Customer name", hent: "Type customer name"),
        ],
      ),
    );
  }
}
