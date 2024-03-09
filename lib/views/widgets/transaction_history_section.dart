import 'package:cloud_cash/constants/app_styles.dart';
import 'package:cloud_cash/models/transaction_history_model.dart';
import 'package:cloud_cash/views/widgets/custom_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Transaction history",
              style: Styles.lato20(context),
            ),
            DataTable(
                columnSpacing: 70,
                dividerThickness: 0.3,
                columns: const [
                  DataColumn(label: Text("Reciever")),
                  DataColumn(label: Text("Type")),
                  DataColumn(label: Text("Date")),
                  DataColumn(label: Text("Amount")),
                ],
                rows: tranList.map((e) {
                  return DataRow(cells: [
                    DataCell(Row(
                      children: [
                        Container(
                            padding: const EdgeInsets.all(5),
                            decoration: ShapeDecoration(
                                color: const Color(0xffEFEFEF),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                            child: SvgPicture.asset(e.iconName)),
                        const Gap(5),
                        Text(e.recieverName)
                      ],
                    )),
                    DataCell(Text(e.type)),
                    DataCell(Text(e.date)),
                    DataCell(Text(e.amount)),
                  ]);
                }).toList()),
          ],
        ),
      ),
    );
  }
}
