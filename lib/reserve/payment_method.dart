import 'package:flutter/material.dart';
import 'package:wasteless_application/component/my_app_bar.dart';
import 'package:wasteless_application/component/payment_method_cards.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(title: 'Payment Method'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          PaymentMethodCards(),
        ],
      ),
    );
  }
}
