import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ForumCards extends StatelessWidget {
  final String photoProfilePath;
  final String username;
  final String date;
  final String discussion;

  const ForumCards({
    super.key,
    required this.photoProfilePath,
    required this.username,
    required this.date,
    required this.discussion,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.fromLTRB(40, 40, 40, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                photoProfilePath,
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    username,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.access_time,
                        size: 20,
                        color: Color(0xff8F959E),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        date,
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff8F959E),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            discussion,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: RichText(
              textAlign: TextAlign.end,
              text: TextSpan(
                text: 'Reply',
                style: const TextStyle(
                  color: Color(0xff8F959E),
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.pushNamed(
                      context,
                      '/reply-forum',
                    );
                  },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
