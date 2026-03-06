import 'package:flutter/material.dart';
import 'package:wasteless_application/component/cards.dart';
import 'package:wasteless_application/component/my_app_bar.dart';

class ViewNearest extends StatelessWidget {
  const ViewNearest({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(title: 'Nearest from you'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Cards(
                      assetsImage: 'assets/avocado.png',
                      distance: '0.5',
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
                      assetsImage: 'assets/lettuce.png',
                      distance: '0.5',
                      productName: 'Curly Lettuces 500 gr',
                      collectTime: '13:00 - 16:00',
                      discount: '50',
                      oldPrice: '23.000',
                      newPrice: '12.500',
                      rating: '4.8',
                      soldItem: '14x'),
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
                      distance: '0.5',
                      productName: 'Sweet Butter Avocado Jumbo 500 gr',
                      collectTime: '15:00 - 18:00',
                      discount: '40',
                      oldPrice: '24.000',
                      newPrice: '14.400',
                      rating: '5.0',
                      soldItem: '60x'),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Cards(
                      assetsImage: 'assets/brocolli.png',
                      distance: '0.8',
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
                      assetsImage: 'assets/brocolli.png',
                      distance: '0.8',
                      productName: 'Organic Brocolli 200 gr',
                      collectTime: '09:00 - 16:00',
                      discount: '50',
                      oldPrice: '18.000',
                      newPrice: '9.000',
                      rating: '4.9',
                      soldItem: '74x'),
                ),
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
            Row(
              children: [
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
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Cards(
                      assetsImage: 'assets/carrot.png',
                      distance: '2.5',
                      productName: 'Carrot Best Value 500 gr',
                      collectTime: '08:00 - 13:00',
                      discount: '50',
                      oldPrice: '19.000',
                      newPrice: '9.500',
                      rating: '5.0',
                      soldItem: '120x'),
                ),
              ],
            ),
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
                      assetsImage: 'assets/orange.png',
                      distance: '2.8',
                      productName: 'Baby Honey Orange 500 gr',
                      collectTime: '09:00 - 16:00',
                      discount: '50',
                      oldPrice: '31.000',
                      newPrice: '15.500',
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
                      assetsImage: 'assets/dragon-fruit.png',
                      distance: '3.2',
                      productName: 'Red Dragon Fruit Jumbo 500 gr',
                      collectTime: '15:00 - 18:00',
                      discount: '10',
                      oldPrice: '18.850',
                      newPrice: '16.965',
                      rating: '5.0',
                      soldItem: '50x'),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Cards(
                      assetsImage: 'assets/apple.png',
                      distance: '4.8',
                      productName: 'Sweet Fuji Apple 1 kg',
                      collectTime: '08:00 - 13:00',
                      discount: '70',
                      oldPrice: '51.723',
                      newPrice: '15.516',
                      rating: '5.0',
                      soldItem: '240x'),
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
