import 'package:flutter/cupertino.dart';
import 'package:nag/widgets/dot_indicator.dart';

class DotIndicatorList extends StatelessWidget {
  const DotIndicatorList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) {
          return const Padding(
            padding: EdgeInsets.only(right: 8),
            child: DotIndicator(isActive: false),
          );
        },
      ),
    );
  }
}
