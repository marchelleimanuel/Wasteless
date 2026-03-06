import 'package:flutter/material.dart';
import 'package:wasteless_application/component/my_app_bar.dart';
import 'package:wasteless_application/component/review_card.dart';

class AllReview extends StatelessWidget {
  const AllReview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(title: 'All Review'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            ReviewCard(
              username: 'Jack',
              reviewTime: '2 hours',
              rating: 5,
            ),
            ReviewCard(
              username: 'Dean',
              reviewTime: '1 hour',
              rating: 4,
            ),
            ReviewCard(
              username: 'luch',
              reviewTime: '1 week',
              rating: 5,
            ),
            ReviewCard(
              username: 'Priska',
              reviewTime: '1 month',
              rating: 5,
            ),
            ReviewCard(
              username: 'Lemanuela',
              reviewTime: '1 month',
              rating: 4,
            ),
            ReviewCard(
              username: 'Nocan',
              reviewTime: '1 month',
              rating: 5,
            ),
            ReviewCard(
              username: 'Sande',
              reviewTime: '1 month',
              rating: 5,
            ),
            ReviewCard(
              username: 'Molekum',
              reviewTime: '1 month',
              rating: 5,
              comment: 'Good! Delicious',
            ),
            ReviewCard(
              username: 'Samlok',
              reviewTime: '1 month',
              rating: 5,
              comment: 'Great value for the price ! Nicee!',
            ),
            ReviewCard(
              username: 'Panjul',
              reviewTime: '1 month',
              rating: 5,
            ),
            ReviewCard(
              username: 'Vania Deli',
              reviewTime: '1 month',
              rating: 4,
            ),
            ReviewCard(
              username: 'Shelvia',
              reviewTime: '3 month',
              rating: 4,
            ),
            ReviewCard(
              username: 'Florensia',
              reviewTime: '4 month',
              rating: 5,
            ),
            ReviewCard(
              username: 'Davin',
              reviewTime: '6 month',
              rating: 5,
            ),
            ReviewCard(
              username: 'Bian',
              reviewTime: '6 month',
              rating: 4,
            ),
          ],
        ),
      ),
    );
  }
}
