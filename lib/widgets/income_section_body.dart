import 'package:flutter/material.dart';
import 'package:nag/widgets/Income_chartItems_listview.dart';
import 'package:nag/widgets/income_chart.dart';

class IcomeSectionBody extends StatelessWidget {
  const IcomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return width >= 1200 && width <= 1650
        ? const SizedBox()
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IcomeChart()),
              SizedBox(width: 1),
              Expanded(flex: 2, child: IncomeChartItemsListView())
            ],
          );
  }
}
