import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:wasteless_application/component/buttons.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: -105,
              // left: 50,
              child: Image.asset(
                'assets/sign_image.png',
                width: MediaQuery.of(context).size.width,
                // height: 400,
              ),
            ),
            const Positioned(
              top: 80,
              left: 10,
              child: Text(
                'Sign Up',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    color: Colors.white),
              ),
            ),
            Positioned(
              top: 130,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 723,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Colors.white,
                ),
                child: Container(
                  // decoration: BoxDecoration(
                  //   border: Border.all(color: Colors.red),
                  // ),
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  margin: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'E-mail',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Your email',
                              hintStyle: TextStyle(
                                color: Color(0xff757575),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffD7D7D7)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffD7D7D7)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: const Text(
                              'Password',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          const TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Input your password',
                              hintStyle: TextStyle(
                                color: Color(0xff757575),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffD7D7D7)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffD7D7D7)),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: const Text(
                              'Confirm Password',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          const TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Confirm your password',
                              hintStyle: TextStyle(
                                color: Color(0xff757575),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffD7D7D7)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffD7D7D7)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Buttons(
                              onPressed: () {
                                Navigator.pushNamed(context, '/signin');
                              },
                              text: 'Sign Up',
                              buttonType: ButtonType.elevated,
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              child: Stack(
                                children: [
                                  const Divider(
                                    color: Color(0xffC2C2C2),
                                    thickness: 1,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Container(
                                      width: 30,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: const Text(
                                        'OR',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xffC2C2C2),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Buttons(
                                  onPressed: () {},
                                  text: 'Sign up with Google',
                                  buttonType: ButtonType.google,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 12),
                                  child: Buttons(
                                    onPressed: () {},
                                    text: 'Sign up with Apple',
                                    buttonType: ButtonType.apple,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 20),
                                  child: RichText(
                                    text: TextSpan(
                                      children: <TextSpan>[
                                        const TextSpan(
                                          text: 'Already have an account?',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 15,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' Log in',
                                          style: const TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                            color: Color(0xff83942B),
                                            fontWeight: FontWeight.w700,
                                            fontSize: 15,
                                          ),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              Navigator.pushNamed(
                                                context,
                                                '/signin',
                                              );
                                            },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
