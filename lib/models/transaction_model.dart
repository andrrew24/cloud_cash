import 'package:cloud_cash/constants/assets.dart';

class TransactionModel {
  final String imgName;
  final String name;

  TransactionModel({required this.imgName, required this.name});
}

List<TransactionModel> transactionsList = [
  TransactionModel(imgName: Assets.imgAnn, name: "Ann"),
  TransactionModel(imgName: Assets.imgMonica, name: "Monica"),
  TransactionModel(imgName: Assets.imgMike, name: "Mike"),
  TransactionModel(imgName: Assets.imgJohn, name: "John"),
  TransactionModel(imgName: Assets.imgMia, name: "Mia"),
];
