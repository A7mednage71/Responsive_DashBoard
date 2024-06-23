import 'package:flutter/material.dart';
import 'package:nag/widgets/custom_backgroud_container.dart';
import 'package:nag/widgets/custom_data_form.dart';
import 'package:nag/widgets/latest_transaction.dart';
import 'package:nag/widgets/quick_invoice_bottom.dart';
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

class QuickInvoiceBottomWidget extends StatelessWidget {
  const QuickInvoiceBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        QuickInvoiceBottom(
            text: "Add more details",
            textColor: Color(0xff4EB7F2),
            backgroundColor: Colors.white),
        SizedBox(width: 24),
        QuickInvoiceBottom(text: "Send Money")
      ],
    );
  }
}
