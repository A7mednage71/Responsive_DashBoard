import 'package:flutter/material.dart';
import 'package:nag/widgets/custom_backgroud_container.dart';
import 'package:nag/widgets/quick_invoice_header.dart';

class QuickInvoiceWidget extends StatelessWidget {
  const QuickInvoiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [QuickInvoiceHeader()],
      ),
    );
  }
}
