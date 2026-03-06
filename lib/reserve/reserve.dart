import 'package:flutter/material.dart';
import 'package:wasteless_application/component/menu_bar.dart';
import 'package:wasteless_application/component/order_card.dart';

class Reserve extends StatelessWidget {
  const Reserve({super.key});

  @override
  Widget build(BuildContext context) {
    double tabBarWidth = MediaQuery.of(context).size.width / 2.5;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabAlignment: TabAlignment.center,
            splashFactory: NoSplash.splashFactory,
            indicatorColor: const Color(0xff6B7A1C),
            dividerColor: Colors.transparent,
            tabs: [
              SizedBox(
                width: tabBarWidth,
                child: const Text(
                  'TO BE COLLECTED',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Inria Sans',
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                width: tabBarWidth,
                child: const Text(
                  'COLLECTED',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Inria Sans',
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Column(
              children: [
                SizedBox(height: 20),
                OrderCard(
                  isCollected: false,
                  logoPath: 'assets/icon/superindo-logo.png',
                  supermarketName: 'SuperIndo',
                  day: '25',
                  month: '07',
                  year: '24',
                  timeCollectionStart: '13.00',
                  timeCollectionEnd: '16.00',
                  location: 'Daan Mogot, Jakarta Barat',
                ),
                OrderCard(
                  isCollected: false,
                  logoPath: 'assets/icon/superindo-logo.png',
                  supermarketName: 'SuperIndo',
                  day: '25',
                  month: '07',
                  year: '24',
                  timeCollectionStart: '15.00',
                  timeCollectionEnd: '17.00',
                  location: 'Daan Mogot, Jakarta Barat',
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(height: 20),
                OrderCard(
                  isCollected: true,
                  logoPath: 'assets/icon/foodhall-logo.png',
                  supermarketName: 'The Food Hall',
                  day: '25',
                  month: '07',
                  year: '24',
                  timeCollection: '11.05',
                  location: 'Daan Mogot, Jakarta Barat',
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: const MenuBars(menuBarPage: 'reserve'),
      ),
    );
  }
}
