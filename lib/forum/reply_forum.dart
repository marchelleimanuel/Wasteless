import 'package:flutter/material.dart';
import 'package:wasteless_application/component/buttons.dart';
import 'package:wasteless_application/component/my_app_bar.dart';

class ReplyForum extends StatelessWidget {
  const ReplyForum({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: 'Comment'),
      body: Container(
        margin: const EdgeInsets.fromLTRB(20, 40, 20, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            const SizedBox(height: 40),
            Buttons(
              onPressed: () {
                Navigator.pushNamed(context, '/forum');
              },
              text: 'Comment',
              buttonType: ButtonType.elevated,
            ),
          ],
        ),
      ),
    );
  }
}
