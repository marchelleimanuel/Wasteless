import 'package:flutter/material.dart';

enum ButtonType { outlined, elevated, google, apple }

class Buttons extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  final ButtonType buttonType;

  const Buttons({
    super.key,
    required this.onPressed,
    required this.text,
    this.buttonType = ButtonType.outlined,
  });

  @override
  Widget build(BuildContext context) {
    switch (buttonType) {
      case ButtonType.elevated:
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff83942B),
              foregroundColor: const Color(0xffF2F2F2),
            ),
            onPressed: onPressed,
            child: Text(
              text,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 16),
            ),
          ),
        );
      case ButtonType.outlined:
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 50,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: const BorderSide(
                color: Color(0xff83942B),
              ),
            ),
            onPressed: onPressed,
            child: Text(
              text,
              style: const TextStyle(
                  color: Color(0xff83942B),
                  fontWeight: FontWeight.w800,
                  fontSize: 16),
            ),
          ),
        );

      case ButtonType.google:
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 50,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: Color(0xffD7D7D7), width: 2),
            ),
            onPressed: onPressed,
            child: SizedBox(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 25,
                    height: 25,
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(right: 10),
                    child: Image.asset(
                      'assets/icon/google-32.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 7),
                    height: 35,
                    child: Text(
                      text,
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontSize: 16),
                    ),
                  )
                ],
              ),
            ),
          ),
        );

      case ButtonType.apple:
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 50,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: Color(0xffD7D7D7), width: 2),
            ),
            onPressed: onPressed,
            child: SizedBox(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 2),
                    child: const Icon(
                      Icons.apple,
                      color: Colors.black,
                      size: 35,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 7),
                    height: 35,
                    child: Text(
                      text,
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontSize: 16),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
    }
  }
}
