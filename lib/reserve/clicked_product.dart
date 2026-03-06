import 'package:flutter/material.dart';
import 'package:wasteless_application/component/buttons.dart';
import 'package:wasteless_application/component/cards.dart';
import 'package:wasteless_application/component/review_card.dart';
import 'package:wasteless_application/model/product_model.dart';

class ClickedProduct extends StatelessWidget {
  final Product product;

  const ClickedProduct({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // gambarnya
              Stack(
                children: [
                  SizedBox(
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      product.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 20, 15, 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: const Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        const Heart(),
                      ],
                    ),
                  ),
                ],
              ),
              // product info
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Rating sama collect today dan lokasi
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Rating
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Color(0xffFFD233),
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  '${product.rating} (112)',
                                  style: const TextStyle(
                                    color: Color(0xff8B8B8B),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                            // Collect time
                            Text(
                              'Collect ${product.collectTime}',
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),

                        // Harga dan diskon
                        Column(
                          children: [
                            // SizedBox(height: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2),
                                      decoration: const BoxDecoration(
                                        color: Color(0xffFEC9C9),
                                      ),
                                      child: Text(
                                        '${product.discount}% ',
                                        style: const TextStyle(
                                          color: Color(0xffD83A3A),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 5),
                                      child: Text(
                                        product.oldPrice,
                                        style: const TextStyle(
                                          color: Color(0xff888888),
                                          decoration:
                                              TextDecoration.lineThrough,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'Rp${product.newPrice}',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),

                    // Spasi
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                        ),
                        Text(
                          'Daan Mogot, Jakarta Barat',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.black.withOpacity(0.60),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Line separation
              Container(
                margin: const EdgeInsets.only(top: 10),
                height: 2,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Color(0xffD2D2D2),
                ),
              ),

              // Description
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 10, 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Description',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color(0xff404040),
                      ),
                    ),
                    Text(
                        'This avocado variety offers a rich, creamy texture, making it perfect for smoothies, salads, or spreading on toast. Its large size and buttery flavor are ideal for avocado lovers looking for quality and quantity. This jumbo avocado is fresh and ready to be picked up at your preferred collection time.')
                  ],
                ),
              ),

              // Line Separation
              Container(
                margin: const EdgeInsets.only(top: 15),
                height: 2,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Color(0xffD2D2D2),
                ),
              ),

              const SizedBox(height: 20),

              Column(
                children: [
                  const Text(
                    'WHAT OTHER PEOPLE ARE SAYING',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Color(0xff404040),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.star,
                        color: Color(0xffFFD233),
                        size: 50,
                      ),
                      Text(
                        '${product.rating} / 5.0',
                        style: const TextStyle(
                          color: Color(0xff2B2B2B),
                          fontWeight: FontWeight.bold,
                          fontSize: 38,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              // Line Separation
              Container(
                margin: const EdgeInsets.only(top: 15),
                height: 2,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Color(0xffD2D2D2),
                ),
              ),

              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Review',
                          style: TextStyle(
                            color: Color(0xff404040),
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.pushNamed(
                            context,
                            '/all-review',
                          ),
                          child: const Text(
                            'View All',
                            style: TextStyle(
                              color: Color(0xff83942B),
                              decoration: TextDecoration.underline,
                              decorationColor: Color(0xff83942B),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Review orang
                  const ReviewCard(
                    username: 'Panjul',
                    reviewTime: '1 month',
                    rating: 5,
                  ),
                  const ReviewCard(
                    username: 'Molekum',
                    reviewTime: '1 month',
                    rating: 5,
                    comment: 'Good! Delicious',
                  ),
                  const ReviewCard(
                    username: 'Samlok',
                    reviewTime: '3 month',
                    rating: 5,
                    comment: 'Great value for the price ! Nicee!',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, -1),
              blurRadius: 10,
              color: Colors.black.withOpacity(0.1),
            )
          ],
        ),
        child: Buttons(
          onPressed: () => Navigator.pushNamed(context, '/payment-method'),
          text: 'Reserve',
          buttonType: ButtonType.elevated,
        ),
      ),
    );
  }
}
