import 'package:cloud_cash/constants/assets.dart';
import 'package:cloud_cash/views/widgets/custom_button.dart';
import 'package:cloud_cash/views/widgets/drawer_items_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../constants/app_styles.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.sizeOf(context).width * .7,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(Assets.imgCloudcash1),
              const Gap(11),
              Text(
                "cloudcash",
                style: Styles.lato16(context)
                    .copyWith(color: const Color(0xff0F4264)),
              )
            ],
          ),
          const Gap(80),
          const DrawerItemsList(),
          SvgPicture.asset(Assets.imgCloudcash2),
          const Gap(9),
          Text(
            "Give your money awesome space in cloud",
            style: Styles.lato8(context),
          ),
          const Gap(15),
          const CustomButton(text: "Upgrade to premium")
        ],
      ),
    );
  }
}
