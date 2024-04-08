import 'package:cloud_cash/views/widgets/goals_section.dart';
import 'package:cloud_cash/views/widgets/statistics_section.dart';
import 'package:cloud_cash/views/widgets/transaction_section.dart';
import 'package:flutter/material.dart';

class TrailSection extends StatelessWidget {
  const TrailSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [GoalsSection(), StatisticsSection(), TransactionSection()],
    );
  }
}
