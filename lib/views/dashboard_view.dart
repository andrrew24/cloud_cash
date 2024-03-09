import 'package:cloud_cash/constants/assets.dart';
import 'package:cloud_cash/views/layouts/desktop_layout.dart';
import 'package:cloud_cash/views/layouts/mobile_layout.dart';
import 'package:cloud_cash/views/layouts/tablet_layout.dart';
import 'package:cloud_cash/views/widgets/adaptive_layout.dart';
import 'package:cloud_cash/views/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({
    super.key,
  });

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      drawer: const CustomDrawer(),
      appBar: MediaQuery.sizeOf(context).width < 1200
          ? AppBar(
              title: SvgPicture.asset(Assets.imgCloudcash1),
              centerTitle: true,
              leading: IconButton(
                  onPressed: () {
                    scaffoldkey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu)),
            )
          : null,
      body: AdapiveLayout(
          mobileLayout: (context) => const MobileLayout(),
          tabletLayout: (context) => const TabletLayout(),
          dektopLayout: (context) => const DesktopLayout()),
    );
  }
}
