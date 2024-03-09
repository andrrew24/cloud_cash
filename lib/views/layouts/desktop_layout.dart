import 'package:cloud_cash/views/layouts/tablet_layout.dart';
import 'package:cloud_cash/views/widgets/custom_drawer.dart';
import 'package:cloud_cash/views/widgets/goals_section.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Row(
          children: [
            Expanded(flex: 2, child: CustomDrawer()),
            Expanded(
                flex: 7,
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: TabletLayout(),
                    ),
                    Expanded(
                      flex: 3,
                      child: GoalsSection(),
                    ),
                  ],
                ))
          ],
        ));
  }
}

