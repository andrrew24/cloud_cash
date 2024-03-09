import 'package:cloud_cash/constants/app_styles.dart';
import 'package:cloud_cash/models/drawer_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerItemModel, required this.isActive});

  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(drawerItemModel: drawerItemModel)
        : InActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        drawerItemModel.image,
        colorFilter: const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
      ),
      title: FittedBox(
        alignment: AlignmentDirectional.centerStart,
        fit: BoxFit.scaleDown,
        child: Text(
          drawerItemModel.title,
          style: Styles.lato14(context)
              .copyWith(fontWeight: FontWeight.bold)
              .copyWith(color: Colors.grey),
        ),
      ),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      selected: true,
      selectedColor: const Color(0xff197BBD),
      leading: SvgPicture.asset(
        drawerItemModel.image,
        colorFilter: const ColorFilter.mode(Color(0xff197BBD), BlendMode.srcIn),
      ),
      title: Text(
        drawerItemModel.title,
        style: Styles.lato14(context).copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
