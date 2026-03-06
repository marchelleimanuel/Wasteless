// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:wasteless_application/component/buttons.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: -150,
              child: Image.asset(
                'assets/home_image.png',
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Positioned(
              top: 500,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
                width: MediaQuery.of(context).size.width,
                height: 600,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 60, vertical: 30),
                  child: Column(
                    children: [
                      const Text(
                        'Welcome to WasteLess',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: Text(
                          '"The next big thing will be reducing food waste. - Dough Rauch',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                            color: Color(0xff757575),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 20, bottom: 15),
                            child: Buttons(
                              onPressed: () {
                                Navigator.pushNamed(context, '/signup');
                              },
                              text: 'Sign Up',
                              buttonType: ButtonType.elevated,
                            ),
                          ),
                          Buttons(
                            onPressed: () {
                              Navigator.pushNamed(context, '/signin');
                            },
                            buttonType: ButtonType.outlined,
                            text: 'Log In',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
