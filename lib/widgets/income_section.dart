import 'package:flutter/cupertino.dart';
import 'package:nag/widgets/custom_backgroud_container.dart';
import 'package:nag/widgets/income_chart.dart';
import 'package:nag/widgets/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      children: [
        IncomeSectionHeader(),
        Expanded(
          child: IcomeChart(),
        )
      ],
    ));
  }
}
