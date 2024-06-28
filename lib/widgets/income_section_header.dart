import 'package:flutter/cupertino.dart';
import 'package:nag/utils/app_styles.dart';
import 'package:nag/widgets/range_options.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Income", style: AppStyles.semiBold20(context)),
        const RangeOptions()
      ],
    );
  }
}
