import 'package:cloud_cash/views/widgets/card_section.dart';
import 'package:cloud_cash/views/widgets/transaction_history_section.dart';
import 'package:flutter/material.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CardSecion(),
        TransactionHistorySection(),
      ],
    );
  }
}
