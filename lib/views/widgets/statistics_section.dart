import 'package:cloud_cash/constants/app_styles.dart';
import 'package:cloud_cash/models/statistic_model.dart';
import 'package:cloud_cash/views/widgets/statistics_item.dart';
import 'package:flutter/material.dart';

class StatisticsSection extends StatelessWidget {
  const StatisticsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Outcome Statistics",
          style: Styles.lato20(context),
        ),
        Column(
          children: statisticList
              .map((e) => StatisticItem(statisticModel: e))
              .toList(),
        ),
      ],
    );
  }
}