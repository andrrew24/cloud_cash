import 'package:cloud_cash/constants/assets.dart';

class DrawerItemModel {
  final String title;
  final String image;

  const DrawerItemModel({required this.title, required this.image});
}

const List drawerItemsList = [
  DrawerItemModel(title: "Overview", image: Assets.imgOverview),
  DrawerItemModel(title: "Transactions", image: Assets.imgTransactions),
  DrawerItemModel(title: "Cards", image: Assets.imgCards),
  DrawerItemModel(title: "Invoices", image: Assets.imgInvoices),
  DrawerItemModel(title: "Goals", image: Assets.imgGoals),
  DrawerItemModel(title: "Settings", image: Assets.imgSettings),
];
