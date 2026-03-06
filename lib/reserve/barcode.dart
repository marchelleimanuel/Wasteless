import 'package:flutter/material.dart';
import 'package:wasteless_application/component/my_app_bar.dart';

class Barcode extends StatelessWidget {
  const Barcode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 70),
            const Text(
              'SuperIndo',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Daan Mogot, Jakarta Barat',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            const SizedBox(height: 50),
            Image.asset('assets/barcode.png'),
            const SizedBox(height: 30),
            const Text(
              'Show the QR to the cashier',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
