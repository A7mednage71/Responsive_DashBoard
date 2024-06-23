import 'package:flutter/material.dart';
import 'package:nag/widgets/custom_backgroud_container.dart';
import 'package:nag/widgets/custom_data_form.dart';
import 'package:nag/widgets/latest_transaction.dart';
import 'package:nag/widgets/quick_invoice_buttom_widget.dart';
import 'package:nag/widgets/quick_invoice_button.dart';
import 'package:nag/widgets/quick_invoice_header.dart';

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
          Divider(height: 48, thickness: 1, color: Color(0xffF1F1F1)),
          CustomerDataForm(),
          SizedBox(height: 24),
          QuickInvoiceBottomWidget()
        ],
      ),
    );
  }
}
