import 'package:flutter/material.dart';
import 'package:wasteless_application/component/cards.dart';
import 'package:wasteless_application/component/my_app_bar.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(title: 'Favorites'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Cards(
                      assetsImage: 'assets/banana.png',
                      distance: '2.5',
                      productName: 'A Hands of Bananas',
                      collectTime: '13:00 - 16:00',
                      discount: '50',
                      oldPrice: '29.999',
                      newPrice: '14.999',
                      rating: '4.8',
                      soldItem: '80x'),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Cards(
                      assetsImage: 'assets/avocado.png',
                      distance: '0.5',
                      productName: 'Sweet Butter Avocado Jumbo 500 gr',
                      collectTime: '15:00 - 18:00',
                      discount: '40',
                      oldPrice: '24.000',
                      newPrice: '14.400',
                      rating: '5.0',
                      soldItem: '60x'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Cards(
                      assetsImage: 'assets/chicken-breast.png',
                      distance: '1.8',
                      productName: 'Chicken Breast Organic 500 gr',
                      collectTime: '08:00 - 13:00',
                      discount: '50',
                      oldPrice: '49.500',
                      newPrice: '24.500',
                      rating: '5.0',
                      soldItem: '20x'),
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
