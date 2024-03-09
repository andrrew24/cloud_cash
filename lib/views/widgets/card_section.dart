
import 'package:cloud_cash/constants/app_styles.dart';
import 'package:cloud_cash/views/widgets/balance_info.dart';
import 'package:cloud_cash/views/widgets/cards_pageview.dart';
import 'package:cloud_cash/views/widgets/custom_background.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CardSecion extends StatelessWidget {
  const CardSecion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Cards",
                    style: Styles.lato20(context)
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                  const Gap(13),
                  const CardsPageView(),
                  const Gap(30),
                  LinearPercentIndicator(
                    lineHeight: 10,
                    percent: 0.30,
                    barRadius: const Radius.circular(14),
                    progressColor: const Color(0xff197BBD),
                  ),
                  const Gap(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Weekly Payment Limit",
                        style:
                            Styles.lato14(context).copyWith(color: Colors.grey),
                      ),
                      Text(
                        r"$350.60 / $4000",
                        style:
                            Styles.lato14(context).copyWith(color: Colors.grey),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const BalanceInfo(),
          ],
        ),
      ),
    );
  }
}

