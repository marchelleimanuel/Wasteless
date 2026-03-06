import 'package:flutter/material.dart';
import 'package:wasteless_application/component/cards.dart';
import 'package:wasteless_application/component/my_app_bar.dart';

class ClickedSupermarket extends StatelessWidget {
  const ClickedSupermarket({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(title: 'Offers'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Cards(
                      assetsImage: 'assets/green-grape.png',
                      distance: '2.0',
                      productName: 'Green Shine Grape 250 gr',
                      collectTime: '08:00 - 13:00',
                      discount: '30',
                      oldPrice: '27.500',
                      newPrice: '19.250',
                      rating: '5.0',
                      soldItem: '240x'),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Cards(
                      assetsImage: 'assets/melon.png',
                      distance: '2.0',
                      productName: 'Melon Golden Aroma 1pc',
                      collectTime: '09:00 - 16:00',
                      discount: '50',
                      oldPrice: '60.000',
                      newPrice: '30.000',
                      rating: '4.9',
                      soldItem: '234x'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Cards(
                      assetsImage: 'assets/avocado.png',
                      distance: '2.0',
                      productName: 'Sweet Butter Avocado Jumbo 1 kg',
                      collectTime: '13:00 - 16:00',
                      discount: '70',
                      oldPrice: '46.370',
                      newPrice: '13.911',
                      rating: '4.8',
                      soldItem: '134x'),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Cards(
                      assetsImage: 'assets/dragon-fruit.png',
                      distance: '2.0',
                      productName: 'Red Dragon Fruit Jumbo 1 kg',
                      collectTime: '15:00 - 18:00',
                      discount: '50',
                      oldPrice: '37.700',
                      newPrice: '18.850',
                      rating: '5.0',
                      soldItem: '200x'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Cards(
                      assetsImage: 'assets/pakchoy.png',
                      distance: '2.0',
                      productName: 'Organic Pak Choy Inagree 500 gr',
                      collectTime: '08:00 - 13:00',
                      discount: '50',
                      oldPrice: '18.000',
                      newPrice: '9.000',
                      rating: '5.0',
                      soldItem: '20x'),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Cards(
                      assetsImage: 'assets/brocolli.png',
                      distance: '2.0',
                      productName: 'Organic Brocolli 300 gr',
                      collectTime: '09:00 - 16:00',
                      discount: '50',
                      oldPrice: '20.000',
                      newPrice: '10.000',
                      rating: '4.9',
                      soldItem: '44x'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Cards(
                      assetsImage: 'assets/lettuce.png',
                      distance: '2.0',
                      productName: 'Curly Lettuces 500 gr',
                      collectTime: '13:00 - 16:00',
                      discount: '50',
                      oldPrice: '23.000',
                      newPrice: '12.500',
                      rating: '4.8',
                      soldItem: '14x'),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Cards(
                      assetsImage: 'assets/spinach.png',
                      distance: '2.0',
                      productName: 'Spinach 2 packs',
                      collectTime: '15:00 - 18:00',
                      discount: '50',
                      oldPrice: '27.800',
                      newPrice: '13.900',
                      rating: '5.0',
                      soldItem: '50x'),
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
