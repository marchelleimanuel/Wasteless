import 'package:flutter/material.dart';
import 'package:wasteless_application/forum/add_forum.dart';
import 'package:wasteless_application/forum/forum.dart';
import 'package:wasteless_application/forum/reply_forum.dart';
import 'package:wasteless_application/home/clicked_supermarket.dart';
import 'package:wasteless_application/home/discover.dart';
import 'package:wasteless_application/home/favorite.dart';
import 'package:wasteless_application/home/view_nearest.dart';
import 'package:wasteless_application/home/view_recommendation.dart';
import 'package:wasteless_application/home/view_supermarkets.dart';
import 'package:wasteless_application/home/view_under15k.dart';
import 'package:wasteless_application/model/product_model.dart';
import 'package:wasteless_application/onboarding/onboarding.dart';
import 'package:wasteless_application/onboarding/sign_in.dart';
import 'package:wasteless_application/onboarding/sign_up.dart';
import 'package:wasteless_application/profile/profile.dart';
import 'package:wasteless_application/reserve/barcode.dart';
import 'package:wasteless_application/reserve/clicked_product.dart';
import 'package:wasteless_application/reserve/payment_detail.dart';
import 'package:wasteless_application/reserve/payment_method.dart';
import 'package:wasteless_application/reserve/payment_success.dart';
import 'package:wasteless_application/reserve/reserve.dart';
import 'package:wasteless_application/reserve/review.dart';
import 'package:wasteless_application/reserve/view_all_review.dart';
import 'onboarding/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: (settings) {
        if (settings.name == '/clicked-product') {
          // Mendapatkan parameter dari arguments
          final product = settings.arguments as Product;
          return MaterialPageRoute(
            builder: (context) => ClickedProduct(product: product),
          );
        }
        // Tambahkan rute lainnya jika diperlukan
        return null;
      },
      routes: {
        '/': (context) => const SplashScreen(),
        '/onboarding': (context) => const Onboarding(),
        '/signup': (context) => const SignUp(),
        '/signin': (context) => const SignIn(),
        '/discover': (context) => const Discover(),
        '/reserve': (context) => const Reserve(),
        '/forum': (context) => const Forum(),
        '/profile': (context) => const Profile(),
        '/favorite': (context) => const Favorite(),
        '/clicked-supermarket': (context) => const ClickedSupermarket(),
        '/view-nearest': (context) => const ViewNearest(),
        '/view-recommendation': (context) => const ViewRecommendation(),
        '/view-supermarkets': (context) => const ViewSupermarkets(),
        '/view-under15k': (context) => const ViewUnder15k(),
        '/reply-forum': (context) => const ReplyForum(),
        '/add-forum': (context) => const AddForum(),
        '/review': (context) => const Review(),
        '/all-review': (context) => const AllReview(),
        '/payment-method': (context) => const PaymentMethod(),
        '/payment-detail': (context) => const PaymentDetail(),
        '/payment-success': (context) => const PaymentSuccess(),
        '/barcode': (context) => const Barcode(),
      },
      title: 'WasteLess',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xffffffff)),
        fontFamily: 'Inter',
        useMaterial3: true,
      ),
    );
  }
}
