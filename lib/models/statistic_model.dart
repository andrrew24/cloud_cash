import 'package:cloud_cash/constants/assets.dart';
import 'package:flutter/material.dart';

class StatisticModel {
  final String subtitle;
  final String iconName;
  final Color bgColor;
  final Color barColor;
  final int percentage;

  StatisticModel(
      {required this.barColor,
      required this.subtitle,
      required this.iconName,
      required this.bgColor,
      required this.percentage});
}

List<StatisticModel> statisticList = [
  StatisticModel(
      subtitle: "Shoppping",
      iconName: Assets.imgCart,
      bgColor: const Color(0xffFFEADA),
      barColor: const Color(0xffF79042),
      percentage: 52),
  StatisticModel(
      subtitle: "Electronics",
      iconName: Assets.imgTruck,
      bgColor: const Color(0xffDDF9E4),
      barColor: const Color(0xff2BC255),
      percentage: 20),
  StatisticModel(
      subtitle: "Travels",
      iconName: Assets.imgPlane,
      bgColor: const Color(0xffE4F0FF),
      barColor: const Color(0xff70A6E8),
      percentage: 70),
];
