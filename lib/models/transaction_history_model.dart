import 'package:cloud_cash/constants/assets.dart';

class TransactionModel {
  final String recieverName;
  final String type;
  final String date;
  final String amount;
  final String iconName;

  TransactionModel(
      {required this.recieverName,
      required this.type,
      required this.date,
      required this.amount,
      required this.iconName});
}

List<TransactionModel> tranList = [
  TransactionModel(
      recieverName: "Tesco Market",
      type: "Shopping",
      date: "13 Dec 2020",
      amount: r"$250.00",
      iconName: Assets.imgCart),
  TransactionModel(
      recieverName: "ElectroMen Market",
      type: "Shopping",
      date: "13 Dec 2020",
      amount: r"$250.00",
      iconName: Assets.imgTruck),
  TransactionModel(
      recieverName: "Fiorgio Restaurant",
      type: "Food",
      date: "13 Dec 2020",
      amount: r"$250.00",
      iconName: Assets.imgHealthy),
  TransactionModel(
      recieverName: "John Mathew Kayne",
      type: "Sport",
      date: "13 Dec 2020",
      amount: r"$250.00",
      iconName: Assets.imgPerson),
  TransactionModel(
      recieverName: "Ann Marlin",
      type: "Shopping",
      date: "13 Dec 2020",
      amount: r"$250.00",
      iconName: Assets.imgPerson),
];
