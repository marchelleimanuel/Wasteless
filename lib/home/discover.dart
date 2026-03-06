import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:wasteless_application/component/cards.dart';
import 'package:wasteless_application/component/menu_bar.dart';
import 'package:wasteless_application/component/supermarkets_cards.dart';

class Discover extends StatelessWidget {
  const Discover({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 185,
                // height: 285,
                child: Stack(
                  children: [
                    Container(
                      height: 143,
                      decoration: const BoxDecoration(
                        color: Color(0xff83942B),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 20, top: 20),
                              child: const Row(
                                children: [
                                  Text(
                                    'Atur Lokasi',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 13),
                              child: const Text(
                                'Current Location',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 25, right: 20),
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, '/favorite');
                                },
                                child: Image.asset(
                                  'assets/icon/heart.png',
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      width: MediaQuery.of(context).size.width - 20,
                      top: 110,
                      left: 10,
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          filled: true,
                          fillColor: Colors.white,
                          hintStyle: TextStyle(
                            color: Color(0xffB0B0B0),
                            fontSize: 14,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffD7D7D7)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffD7D7D7)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Sections Recommendation for you
              Container(
                margin: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  bottom: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Recommendation for you',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'View All',
                            style: const TextStyle(
                              fontSize: 15,
                              decoration: TextDecoration.underline,
                              decorationColor: Color(0xff83942B),
                              fontWeight: FontWeight.w700,
                              color: Color(0xff83942B),
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushNamed(
                                    context, '/view-recommendation');
                              },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Section's content
              Container(
                margin: const EdgeInsets.only(bottom: 30),
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    // CARD
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Cards(
                          assetsImage: 'assets/apple.png',
                          distance: '4.8',
                          productName: 'Sweet Fuji Apple 500 gr',
                          collectTime: '08:00 - 13:00',
                          discount: '70',
                          oldPrice: '51.723',
                          newPrice: '15.516',
                          rating: '5.0',
                          soldItem: '240x'),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Cards(
                          assetsImage: 'assets/orange.png',
                          distance: '2.9',
                          productName: 'Baby Honey Orange 500 gr',
                          collectTime: '09:00 - 16:00',
                          discount: '50',
                          oldPrice: '31.000',
                          newPrice: '15.500',
                          rating: '4.9',
                          soldItem: '234x'),
                    ),

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
                      padding: EdgeInsets.only(left: 10, right: 10),
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
              ),

              // Section supermarket
              Container(
                margin: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Supermarkets',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'View All',
                            style: const TextStyle(
                              fontSize: 15,
                              decoration: TextDecoration.underline,
                              decorationColor: Color(0xff83942B),
                              fontWeight: FontWeight.w700,
                              color: Color(0xff83942B),
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushNamed(
                                    context, '/view-supermarkets');
                              },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Section's content
              Container(
                margin: const EdgeInsets.only(bottom: 30),
                height: 233,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    // CARD
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: SuperMarketCards(
                        imageAssetsPath: 'assets/superindo-assets.png',
                        logoPath: 'assets/icon/superindo-logo.png',
                        marketName: 'SuperIndo',
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: SuperMarketCards(
                        imageAssetsPath: 'assets/foodhall-assets.png',
                        logoPath: 'assets/icon/foodhall-logo.png',
                        marketName: 'The Food Hall',
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: SuperMarketCards(
                        imageAssetsPath: 'assets/lottemart-assets.png',
                        logoPath: 'assets/icon/lottemart-logo.png',
                        marketName: 'LotteMart',
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: SuperMarketCards(
                        imageAssetsPath: 'assets/harihari-assets.png',
                        logoPath: 'assets/icon/harihari-logo.png',
                        marketName: 'Hari Hari Swalayan',
                      ),
                    ),
                  ],
                ),
              ),

              // Section Nearest from you
              Container(
                margin: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Nearest from you',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'View All',
                            style: const TextStyle(
                              fontSize: 15,
                              decoration: TextDecoration.underline,
                              decorationColor: Color(0xff83942B),
                              fontWeight: FontWeight.w700,
                              color: Color(0xff83942B),
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushNamed(context, '/view-nearest');
                              },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Section's content
              Container(
                margin: const EdgeInsets.only(bottom: 30),
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    // CARD
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

                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Cards(
                          assetsImage: 'assets/dragon-fruit.png',
                          distance: '3.2',
                          productName: 'Red Dragon Fruit 500 gr',
                          collectTime: '15:00 - 18:00',
                          discount: '10',
                          oldPrice: '18.850',
                          newPrice: '16.965',
                          rating: '5.0',
                          soldItem: '50x'),
                    ),
                  ],
                ),
              ),

              // Section under 15k
              Container(
                margin: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Under 15k',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'View All',
                            style: const TextStyle(
                              fontSize: 15,
                              decoration: TextDecoration.underline,
                              decorationColor: Color(0xff83942B),
                              fontWeight: FontWeight.w700,
                              color: Color(0xff83942B),
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushNamed(context, '/view-under15k');
                              },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Section's content
              Container(
                margin: const EdgeInsets.only(bottom: 30),
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    // CARD
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
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Cards(
                          assetsImage: 'assets/avocado.png',
                          distance: '0.5',
                          productName: 'Butter Avocado 500 gr',
                          collectTime: '15:00 - 18:00',
                          discount: '40',
                          oldPrice: '24.000',
                          newPrice: '14.400',
                          rating: '5.0',
                          soldItem: '60x'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const MenuBars(menuBarPage: 'discover'),
    );
  }
}
