import 'package:cloud_cash/constants/app_styles.dart';
import 'package:cloud_cash/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class AtmCard extends StatelessWidget {
  const AtmCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 320 / 205,
      child: Container(
        padding: const EdgeInsets.only(top: 20, left: 20),
        decoration: ShapeDecoration(
          shadows: [
            BoxShadow(
              blurRadius: 24,
              offset: const Offset(0, 16),
              color: Colors.black.withOpacity(0.06),
            ),
            BoxShadow(
              blurRadius: 6,
              offset: const Offset(0, 2),
              color: Colors.black.withOpacity(0.04),
            ),
            BoxShadow(
              blurRadius: 1,
              color: Colors.black.withOpacity(0.04),
            ),
          ],
          gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff197BBD),
                Color(0xff3391D0),
              ]),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(26),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
                bottom: 0, right: 0, child: SvgPicture.asset(Assets.imgCloud)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "cloudcash",
                  style: Styles.lato16(context).copyWith(color: Colors.white),
                ),
                Text(
                  "PREMIUM ACCOUNT",
                  style: Styles.lato8(context).copyWith(
                      color: Colors.white.withOpacity(.39),
                      fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                Text(
                  "5789     ****       ****      2847",
                  style: Styles.lato20(context).copyWith(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
                const Spacer(),
                Row(
                  children: [
                    Text(
                      "Card holder",
                      style:
                          Styles.lato8(context).copyWith(color: Colors.white),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    Text(
                      "Expire date",
                      style:
                          Styles.lato8(context).copyWith(color: Colors.white),
                    ),
                    const Spacer(
                      flex: 2,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Mike Smith",
                      style:
                          Styles.lato12(context).copyWith(color: Colors.white),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    Text(
                      "06/21",
                      style:
                          Styles.lato12(context).copyWith(color: Colors.white),
                    ),
                    const Spacer(
                      flex: 2,
                    ),
                  ],
                ),
                const Gap(20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
