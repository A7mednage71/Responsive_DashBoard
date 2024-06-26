import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nag/widgets/Income_chartItems_listview.dart';
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
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: IcomeChart()),
                SizedBox(width: 40),
                Expanded(child: IncomeChartItemsListView())
              ],
            ),
          )
        ],
      ),
    );
  }
}
