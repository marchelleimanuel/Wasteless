import 'package:flutter/material.dart';
import 'package:wasteless_application/component/buttons.dart';

class PaymentSuccess extends StatelessWidget {
  const PaymentSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.check_circle_rounded,
              color: Color(0xff22BB33),
              size: 150,
            ),
            const Text(
              'Thank You!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 36,
              ),
            ),
            const Text(
              'Payment done successfully',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: Buttons(
                onPressed: () {
                  Navigator.pushNamed(context, '/discover');
                },
                text: 'Okay',
                buttonType: ButtonType.elevated,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
