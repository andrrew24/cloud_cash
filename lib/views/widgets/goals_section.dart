import 'package:cloud_cash/constants/app_styles.dart';
import 'package:cloud_cash/models/goals_model.dart';
import 'package:cloud_cash/views/widgets/goals_item.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class GoalsSection extends StatelessWidget {
  const GoalsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "Goals",
              style: Styles.lato20(context),
            ),
            const Gap(13.5),
            Container(
              decoration: const ShapeDecoration(
                  color: Color(0xffFFC145), shape: CircleBorder()),
              child: const Icon(
                Icons.add,
                size: 20,
              ),
            )
          ],
        ),
        const Gap(15),
        Row(
          children: goalsList
              .map((e) => Expanded(child: GoalsItem(goalsModel: e)))
              .toList(),
        ),
      ],
    );
  }
}
