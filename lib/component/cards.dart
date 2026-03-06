import 'package:flutter/material.dart';
import 'package:wasteless_application/model/product_model.dart';
import 'package:wasteless_application/reserve/clicked_product.dart';

class Cards extends StatelessWidget {
  final String assetsImage;
  final String distance;
  final String productName;
  final String collectTime;
  final String discount;
  final String oldPrice;
  final String newPrice;
  final String rating;
  final String soldItem;
  final VoidCallback? onTap;

  const Cards({
    super.key,
    required this.assetsImage,
    required this.distance,
    required this.productName,
    required this.collectTime,
    required this.discount,
    required this.oldPrice,
    required this.newPrice,
    required this.rating,
    required this.soldItem,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ClickedProduct(
              product: Product(
                name: productName,
                image: assetsImage,
                rating: rating,
                location: 'Daan Mogot, Jakarta Barat',
                description:
                    'This avocado variety offers a rich, creamy texture...',
                collectTime: collectTime,
                oldPrice: oldPrice,
                newPrice: newPrice,
                discount: discount,
              ),
            ),
          ),
        );
      },
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
            Stack(
              children: [
                SizedBox(
                  height: 122,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                    child: Image.asset(
                      assetsImage,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ),
                // heart icon
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 60,
                  alignment: Alignment.topRight,
                  child: const Heart(),
                ),
                // distance
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                    ),
                    child: Text(
                      '$distance Km',
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // card information
            Container(
              padding: const EdgeInsets.fromLTRB(5, 0, 5, 5),
              child: Stack(
                children: [
                  Container(
                    height: 110,
                    margin: const EdgeInsets.only(top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          productName,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Collecting time
                  Positioned(
                    top: 55,
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 8),
                      child: Text(
                        'Collect today: $collectTime',
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: Color(0xff888888),
                        ),
                      ),
                    ),
                  ),

                  // Discount and price
                  Positioned(
                    top: 75,
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 2),
                          decoration: const BoxDecoration(
                            color: Color(0xffFEC9C9),
                          ),
                          child: Text(
                            '$discount%',
                            style: const TextStyle(
                              color: Color(0xffD83A3A),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          child: Text(
                            oldPrice,
                            style: const TextStyle(
                              color: Color(0xff888888),
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ),
                        Text(
                          newPrice,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Rating
                  Positioned(
                    top: 100,
                    child: Row(
                      children: [
                        const Icon(
                          Icons.star,
                          size: 20,
                          color: Color(0xffFFD233),
                        ),
                        Text(
                          rating,
                          style: const TextStyle(
                            color: Color(0xff888888),
                            fontSize: 12,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 7),
                          child: const Text(
                            '|',
                            style: TextStyle(
                              color: Color(0xff888888),
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Text(
                          '$soldItem sold',
                          style: const TextStyle(
                            color: Color(0xff888888),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
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

class Heart extends StatefulWidget {
  const Heart({
    super.key,
  });

  @override
  State createState() {
    return _HeartState();
  }
}

class _HeartState extends State<Heart> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(
          () {
            isFavorite = !isFavorite;
          },
        );
      },
      child: Image.asset(
        isFavorite ? 'assets/icon/filled-heart.png' : 'assets/icon/heart.png',
        color: isFavorite ? Colors.red : Colors.white,
      ),
    );
  }
}
