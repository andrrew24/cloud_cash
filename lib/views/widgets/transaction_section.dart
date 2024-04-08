import 'package:cloud_cash/constants/app_styles.dart';
import 'package:cloud_cash/constants/assets.dart';
import 'package:cloud_cash/views/widgets/custom_background.dart';
import 'package:cloud_cash/views/widgets/transaction_actions.dart';
import 'package:cloud_cash/views/widgets/transactions_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class TransactionSection extends StatelessWidget {
  const TransactionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomBackground(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "New transaction",
                  style: Styles.lato20(context),
                ),
                const Gap(15),
                const TransactionsList(),
                const Gap(18),
                const TransacionActions()
              ],
            ),
          ),
        ),
        Container(
          decoration: ShapeDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Color(0xffD05842),
                    Color(0xffED654C),
                  ]),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(19))),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(child: SvgPicture.asset(Assets.imgLoanbg)),
              Positioned(
                  bottom: 10,
                  left: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Get Great",
                        style: Styles.lato20(context)
                            .copyWith(color: Colors.white),
                      ),
                      Row(
                        children: [
                          Text(
                            "Loan",
                            style: Styles.lato20(context)
                                .copyWith(color: Colors.white),
                          ),
                          Gap(5),
                          Transform.rotate(
                              angle: 3.14,
                              child: const Icon(
                                Icons.arrow_back_ios_new_rounded,
                                size: 18,
                                color: Colors.white,
                              ))
                        ],
                      ),
                    ],
                  ))
            ],
          ),
        )
      ],
    );
  }
}
