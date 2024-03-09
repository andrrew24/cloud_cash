import 'package:cloud_cash/constants/assets.dart';

class GoalsModel {
  final String budget;
  final String title;
  final String iconName;
  final String date;

  GoalsModel(
      {required this.budget,
      required this.title,
      required this.iconName,
      required this.date});
}

List<GoalsModel> goalsList = [
  GoalsModel(
      budget: r"$550",
      title: "Holidays",
      iconName: Assets.imgMountain,
      date: "12/20/20"),
  GoalsModel(
      budget: r"$550",
      title: "Renovation",
      iconName: Assets.imgBrush,
      date: "12/20/20"),
  GoalsModel(
      budget: r"$550",
      title: "Xbox",
      iconName: Assets.imgXbox,
      date: "12/20/20"),
  GoalsModel(
      budget: r"$550",
      title: "Xbox",
      iconName: Assets.imgXbox,
      date: "12/20/20"),
  GoalsModel(
      budget: r"$550",
      title: "Xbox",
      iconName: Assets.imgXbox,
      date: "12/20/20"),
];
