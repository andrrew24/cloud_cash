import 'package:cloud_cash/constants/app_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 18),
      decoration: ShapeDecoration(
          color: const Color(0xffFFC145),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))),
      child: Row(
        children: [
          Text("Upgrade to premium", style: Styles.lato12(context)),
          const Spacer(),
          Transform.rotate(
              angle: 1.571, child: const Icon(Icons.arrow_back_rounded))
        ],
      ),
    );
  }
}
