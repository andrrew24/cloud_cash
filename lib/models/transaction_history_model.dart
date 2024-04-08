import 'package:cloud_cash/constants/assets.dart';

class TransactionHistoryModel {
  final String recieverName;
  final String type;
  final String date;
  final String amount;
  final String iconName;

  TransactionHistoryModel(
      {required this.recieverName,
      required this.type,
      required this.date,
      required this.amount,
      required this.iconName});
}

List<TransactionHistoryModel> tranList = [
  TransactionHistoryModel(
      recieverName: "Tesco Market",
      type: "Shopping",
      date: "13 Dec 2020",
      amount: r"$250.00",
      iconName: Assets.imgCart),
  TransactionHistoryModel(
      recieverName: "ElectroMen Market",
      type: "Shopping",
      date: "13 Dec 2020",
      amount: r"$250.00",
      iconName: Assets.imgTruck),
  TransactionHistoryModel(
      recieverName: "Fiorgio Restaurant",
      type: "Food",
      date: "13 Dec 2020",
      amount: r"$250.00",
      iconName: Assets.imgHealthy),
  TransactionHistoryModel(
      recieverName: "John Mathew Kayne",
      type: "Sport",
      date: "13 Dec 2020",
      amount: r"$250.00",
      iconName: Assets.imgPerson),
  TransactionHistoryModel(
      recieverName: "Ann Marlin",
      type: "Shopping",
      date: "13 Dec 2020",
      amount: r"$250.00",
      iconName: Assets.imgPerson),
];
