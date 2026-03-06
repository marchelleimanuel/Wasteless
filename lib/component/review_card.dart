import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
  final String username;
  final String reviewTime;
  final String comment;
  final int rating;

  const ReviewCard({
    super.key,
    required this.username,
    required this.reviewTime,
    required this.rating,
    this.comment = '',
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset('assets/icon/photo-profile.png'),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '$username ',
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              TextSpan(
                                text: '($reviewTime ago)',
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.25),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Rating
                        Row(
                            children: List.generate(
                          5,
                          (index) => index < rating
                              ? const Icon(
                                  Icons.star,
                                  color: Color(0xffFFD233),
                                )
                              : const Icon(
                                  Icons.star_border_outlined,
                                  color: Color(0xffFFD233),
                                ),
                        )),
                      ],
                    ),
                  ),
                ],
              ),
              Text(
                comment,
                style: const TextStyle(
                  fontSize: 15,
                  color: Color(0xff8B8B8B),
                ),
              ),
            ],
          ),
        ),

        // Line Separation
        Container(
          margin: const EdgeInsets.only(top: 5, bottom: 20),
          height: 2,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Color(0xffD2D2D2),
          ),
        ),
      ],
    );
  }
}
