import 'package:cloud_cash/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TransacionActions extends StatelessWidget {
  const TransacionActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 175,
          padding: const EdgeInsets.all(5),
          decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Color(0xff197BBD)),
                  borderRadius: BorderRadius.circular(8))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "0",
                style: Styles.lato20(context)
                    .copyWith(color: Colors.black.withOpacity(.2)),
              ),
              Text(
                "\$",
                style: Styles.lato20(context)
                    .copyWith(color: Colors.black.withOpacity(.2)),
              ),
            ],
          ),
        ),
        const Gap(10),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 2),
          decoration: ShapeDecoration(
              color: const Color(0xffFFC145),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Send the transfer",
                style: Styles.lato12(context),
              ),
              Transform.rotate(
                  angle: 3.14,
                  child: const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    size: 15,
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
