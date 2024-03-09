import 'package:cloud_cash/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BalanceInfo extends StatefulWidget {
  const BalanceInfo({
    super.key,
  });

  @override
  State<BalanceInfo> createState() => _BalanceInfoState();
}

class _BalanceInfoState extends State<BalanceInfo> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            r"$ 2850.75",
            style:
                Styles.lato24(context).copyWith(color: const Color(0xff197BBD)),
          ),
          Text(
            "Current Balance",
            style: Styles.lato14(context).copyWith(color: Colors.grey),
          ),
          Text(
            r"$ 1500.50",
            style:
                Styles.lato18(context).copyWith(color: const Color(0xff439A86)),
          ),
          Text(
            "Income",
            style: Styles.lato14(context).copyWith(color: Colors.grey),
          ),
          Text(
            r"$ 2850.75",
            style:
                Styles.lato18(context).copyWith(color: const Color(0xffBB4430)),
          ),
          Text(
            "Outcome",
            style: Styles.lato14(context).copyWith(color: Colors.grey),
          ),
          const Gap(30),
          Switch.adaptive(
              value: isActive,
              onChanged: (value) {
                setState(() {
                  isActive = value;
                });
              }),
          const Gap(11),
          Text(
            "Deactivate Card",
            style: Styles.lato14(context).copyWith(color: Colors.grey),
          )
        ],
      ),
    );
  }
}
