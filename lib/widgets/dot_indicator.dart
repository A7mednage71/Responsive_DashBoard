import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 8,
      width: isActive ? 32 : 8,
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        color: isActive ? const Color(0xff4EB7F2) : const Color(0xffE8E8E8),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
