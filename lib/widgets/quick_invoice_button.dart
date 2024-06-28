import 'package:flutter/material.dart';
import 'package:nag/utils/app_styles.dart';

class QuickInvoiceButton extends StatelessWidget {
  const QuickInvoiceButton({
    super.key,
    required this.text,
    this.textColor,
    this.backgroundColor,
  });
  final String text;
  final Color? textColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          shape: const WidgetStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)))),
          elevation: const WidgetStatePropertyAll(0),
          backgroundColor: WidgetStatePropertyAll(
              backgroundColor ?? const Color(0xff4EB7F2)),
          padding:
              const WidgetStatePropertyAll(EdgeInsets.symmetric(vertical: 20)),
        ),
        child: Text(
          text,
          style: AppStyles.semiBold18(context)
              .copyWith(color: textColor ?? const Color(0xffFFFFFF)),
        ),
      ),
    );
  }
}
