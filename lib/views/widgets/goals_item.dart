import 'package:cloud_cash/constants/app_styles.dart';
import 'package:cloud_cash/models/goals_model.dart';
import 'package:cloud_cash/views/widgets/custom_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class GoalsItem extends StatelessWidget {
  const GoalsItem({
    super.key,
    required this.goalsModel,
  });

  final GoalsModel goalsModel;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 158 / 168,
      child: CustomBackground(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, top: 13),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                goalsModel.budget,
                style: Styles.lato24(context),
              ),
              Text(
                goalsModel.date,
                style: Styles.lato14(context),
              ),
              Gap(35),
              SvgPicture.asset(goalsModel.iconName),
              Text(
                goalsModel.title,
                style: Styles.lato20(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
