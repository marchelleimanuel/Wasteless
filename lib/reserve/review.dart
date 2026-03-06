import 'package:flutter/material.dart';
import 'package:wasteless_application/component/buttons.dart';
import 'package:wasteless_application/component/my_app_bar.dart';

class Review extends StatelessWidget {
  const Review({super.key});

  @override
  Widget build(BuildContext context) {
    double starRatingSize = MediaQuery.of(context).size.width / 6;
    return Scaffold(
      appBar: const MyAppBar(title: 'Review'),
      body: Container(
        margin: const EdgeInsets.fromLTRB(20, 40, 20, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // star rating
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.star_border,
                  color: const Color(0xffFFD233),
                  size: starRatingSize,
                ),
                Icon(
                  Icons.star_border,
                  color: const Color(0xffFFD233),
                  size: starRatingSize,
                ),
                Icon(
                  Icons.star_border,
                  color: const Color(0xffFFD233),
                  size: starRatingSize,
                ),
                Icon(
                  Icons.star_border,
                  color: const Color(0xffFFD233),
                  size: starRatingSize,
                ),
                Icon(
                  Icons.star_border,
                  color: const Color(0xffFFD233),
                  size: starRatingSize,
                ),
              ],
            ),
            const SizedBox(height: 40),
            const Text(
              'Comment',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const TextField(
              minLines: 4,
              maxLines: 4,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                hintText: 'Write your comments',
                hintStyle: TextStyle(
                  color: Color(0xff747474),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffD7D7D7),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffD7D7D7),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xffD7D7D7),
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.camera_alt_outlined,
                      color: Color(0xff747474),
                    ),
                    SizedBox(width: 4),
                    Text(
                      'Gives photos or videos',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                        color: Color(0xff747474),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Icon(
                  Icons.check_box_outline_blank,
                  color: Colors.black.withOpacity(0.75),
                ),
                const SizedBox(width: 5),
                const Text(
                  'Hide your name',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Buttons(
              onPressed: () {
                Navigator.pushNamed(context, '/reserve');
              },
              text: 'Submit',
              buttonType: ButtonType.elevated,
            ),
          ],
        ),
      ),
    );
  }
}
