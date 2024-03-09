import 'package:cloud_cash/models/drawer_item_model.dart';
import 'package:cloud_cash/views/widgets/drawer_item.dart';
import 'package:flutter/material.dart';

class DrawerItemsList extends StatefulWidget {
  const DrawerItemsList({super.key});

  @override
  State<DrawerItemsList> createState() => _DrawerItemsListState();
}

class _DrawerItemsListState extends State<DrawerItemsList> {
  int aciveIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: drawerItemsList.length,
      itemBuilder: (context, index) {
        return GestureDetector(
            onTap: () {
              if (aciveIndex != index) {
                setState(() {
                  aciveIndex = index;
                });
              }
            },
            child: DrawerItem(
                drawerItemModel: drawerItemsList[index],
                isActive: index == aciveIndex));
      },
    );
  }
}
