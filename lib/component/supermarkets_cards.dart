import 'package:flutter/material.dart';

class SuperMarketCards extends StatelessWidget {
  final String imageAssetsPath;
  final String logoPath;
  final String marketName;

  const SuperMarketCards({
    super.key,
    required this.imageAssetsPath,
    required this.logoPath,
    required this.marketName,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/view-supermarkets'),
      child: Container(
        width: 180,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black.withOpacity(0.2),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            // Image container
            Container(
              width: double.infinity,
              height: 120,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                child: Image.asset(
                  imageAssetsPath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Logo supermarket

            Transform.translate(
              offset: const Offset(0, -40),
              child: Container(
                width: 68,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(50),
                  ),
                  child: Image.asset(
                    logoPath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            Transform.translate(
              offset: const Offset(0, -30),
              child: Text(
                marketName,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SuperMarketCardsDetail extends StatelessWidget {
  final String imageAssetsPath;
  final String logoPath;
  final String marketName;
  final String marketRegion;
  final double rating;
  final double distance;

  const SuperMarketCardsDetail({
    super.key,
    required this.imageAssetsPath,
    required this.logoPath,
    required this.marketName,
    required this.marketRegion,
    required this.rating,
    required this.distance,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/clicked-supermarket'),
      child: Container(
        margin: const EdgeInsets.fromLTRB(20, 20, 20, 10),
        width: MediaQuery.of(context).size.width,
        height: 230,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 4,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 150,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    child: Image.asset(
                      imageAssetsPath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 65,
                  left: 20,
                  child: Container(
                    width: 68,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(50),
                      ),
                      child: Image.asset(
                        logoPath,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 105,
                  left: 95,
                  child: Text(
                    marketName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.location_on_outlined),
                      Text(
                        marketRegion,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.star,
                        size: 20,
                        color: Color(0xffFFD233),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        '$rating | ',
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Color(0xff888888),
                        ),
                      ),
                      Text(
                        '$distance km',
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                    // ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
