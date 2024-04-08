import 'package:cloud_cash/constants/app_styles.dart';
import 'package:cloud_cash/models/transaction_model.dart';
import 'package:cloud_cash/views/widgets/transaction_item.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TransactionsList extends StatelessWidget {
  const TransactionsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
            children: transactionsList.asMap().entries.map((e) {
          return Padding(
            padding: EdgeInsets.only(left: e.key == 0 ? 0 : 8),
            child: TransactionItem(transactionModel: e.value),
          );
        }).toList()),
        Column(
          children: [
            Container(
              decoration: const ShapeDecoration(
                  color: Color(0xffFFC145), shape: CircleBorder()),
              child: const Icon(
                Icons.add,
                size: 20,
              ),
            ),
            const Gap(10),
            Text(
              "Add New",
              style: Styles.lato12(context),
            ),
          ],
        )
      ],
    );
  }
}