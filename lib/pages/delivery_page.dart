import 'package:flutter/material.dart';
import 'package:food_delivery/pages/my_receipt.dart';

class DeliveryProgressPage extends StatefulWidget {
  const DeliveryProgressPage({super.key});

  @override
  State<DeliveryProgressPage> createState() => _DeliveryProgressPageState();
}

class _DeliveryProgressPageState extends State<DeliveryProgressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Delivery in progress"),
        backgroundColor: Colors.transparent,
      ),
      body: Column(children: [
        MyReceipt(),
      ]),
    );
  }
}
