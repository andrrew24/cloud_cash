import 'package:flutter/material.dart';

class AdapiveLayout extends StatelessWidget {
  const AdapiveLayout(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.dektopLayout});

  final WidgetBuilder mobileLayout, tabletLayout, dektopLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth < 800) {
        return mobileLayout(context);
      } else if (constrains.maxWidth < 1200) {
        return tabletLayout(context);
      } else {
        return dektopLayout(context);
      }
    });
  }
}
