import 'package:cloud_cash/views/dashboard_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CloudCash());
}

class CloudCash extends StatelessWidget {
  const CloudCash({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardView(),
    );
  }
}
