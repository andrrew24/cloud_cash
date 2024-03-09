import 'package:cloud_cash/constants/app_styles.dart';
import 'package:cloud_cash/models/statistic_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class StatisticItem extends StatelessWidget {
  const StatisticItem({
    super.key,
    required this.statisticModel,
  });

  final StatisticModel statisticModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(5),
        decoration: ShapeDecoration(
            color: statisticModel.bgColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(3))),
        child: SvgPicture.asset(
          statisticModel.iconName,
          height: 20,
          width: 20,
          colorFilter:
              ColorFilter.mode(statisticModel.barColor, BlendMode.srcIn),
        ),
      ),
      title: LinearPercentIndicator(
        padding: EdgeInsets.zero,
        lineHeight: 10,
        percent: statisticModel.percentage / 100,
        barRadius: const Radius.circular(14),
        progressColor: statisticModel.barColor,
      ),
      subtitle: Text(
        statisticModel.subtitle,
        style: Styles.lato14(context),
      ),
      trailing: Text(
        "${statisticModel.percentage.toString()}%",
        style: Styles.lato20(context),
      ),
    );
  }
}