import 'package:cloud_cash/constants/app_styles.dart';
import 'package:cloud_cash/models/transaction_model.dart';
import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionModel});

  final TransactionModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(transactionModel.imgName),
        Text(
          transactionModel.name,
          style: Styles.lato12(context),
        )
      ],
    );
  }
}
