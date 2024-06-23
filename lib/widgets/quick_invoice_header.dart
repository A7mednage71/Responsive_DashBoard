import 'package:flutter/material.dart';
import 'package:nag/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Quick Invoice",
          style: AppStyles.semiBold20,
        ),
        CircleAvatar(
          backgroundColor: Color(0xffFAFAFA),
          radius: 25,
          child: Icon(Icons.add),
        )
      ],
    );
  }
}
