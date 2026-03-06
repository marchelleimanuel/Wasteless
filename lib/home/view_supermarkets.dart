import 'package:flutter/material.dart';
import 'package:wasteless_application/component/my_app_bar.dart';
import 'package:wasteless_application/component/supermarkets_cards.dart';

class ViewSupermarkets extends StatelessWidget {
  const ViewSupermarkets({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(title: 'Supermarkets'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SuperMarketCardsDetail(
              imageAssetsPath: 'assets/supermarket-superindo.png',
              logoPath: 'assets/icon/superindo-logo.png',
              marketName: 'SuperIndo',
              marketRegion: 'Daan Mogot, Jakarta Barat',
              rating: 4.9,
              distance: 2,
            ),
            SuperMarketCardsDetail(
              imageAssetsPath: 'assets/supermarket-superindo.png',
              logoPath: 'assets/icon/superindo-logo.png',
              marketName: 'SuperIndo',
              marketRegion: 'Duri Kosambi, Jakarta Barat',
              rating: 4.8,
              distance: 2.5,
            ),
            SuperMarketCardsDetail(
              imageAssetsPath: 'assets/supermarket-thefoodhall.png',
              logoPath: 'assets/icon/foodhall-logo.png',
              marketName: 'The Food Hall',
              marketRegion: 'Neo Soho, Jakarta Barat',
              rating: 5.0,
              distance: 1.8,
            ),
            SuperMarketCardsDetail(
              imageAssetsPath: 'assets/supermarket-thefoodhall.png',
              logoPath: 'assets/icon/foodhall-logo.png',
              marketName: 'The Food Hall',
              marketRegion: 'Lippo Mall Puri, Jakarta Barat',
              rating: 5.0,
              distance: 3,
            ),
            SuperMarketCardsDetail(
              imageAssetsPath: 'assets/supermarket-lottemart.png',
              logoPath: 'assets/icon/lottemart-logo.png',
              marketName: 'The Food Hall',
              marketRegion: 'Taman Surya, Jakarta Barat',
              rating: 5.0,
              distance: 4.6,
            ),
            SuperMarketCardsDetail(
              imageAssetsPath: 'assets/supermarket-lottemart.png',
              logoPath: 'assets/icon/lottemart-logo.png',
              marketName: 'The Food Hall',
              marketRegion: 'Kelapa Gading, Jakarta Utara',
              rating: 5.0,
              distance: 6,
            ),
            SuperMarketCardsDetail(
              imageAssetsPath: 'assets/supermarket-harihari.png',
              logoPath: 'assets/icon/harihari-logo.png',
              marketName: 'Hari Hari Swalayan',
              marketRegion: 'Teluk Gong, Jakarta Utara',
              rating: 4.9,
              distance: 1.2,
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
