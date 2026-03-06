// import 'package:flutter/material.dart';
// import 'package:wasteless_application/component/buttons.dart';
// import 'package:wasteless_application/component/my_app_bar.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class AddForum extends StatefulWidget {
//   const AddForum({super.key});

//   @override
//   _AddForumState createState() => _AddForumState();
// }

// class _AddForumState extends State<AddForum> {
//   final TextEditingController _controller = TextEditingController();
//   List<String> comments = []; // Array untuk menyimpan perubahan teks

//   // Fungsi untuk mengirim data forum ke API
//   Future<void> postForum(String comment) async {
//     final url = Uri.parse(
//         'http://192.168.0.103:3000/add-forum'); // Ganti dengan URL API mu

//     try {
//       final response = await http.post(
//         url,
//         headers: {'Content-Type': 'application/json'},
//         body: jsonEncode({
//           'comment': comment,
//         }),
//       );

//       if (response.statusCode == 200) {
//         // Berhasil menambahkan forum
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Forum created successfully!')),
//         );
//         // Kamu bisa navigasi kembali atau melakukan tindakan lain setelah berhasil
//         Navigator.pushNamed(context, '/forum');
//       } else {
//         // Jika gagal
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Failed to create forum!')),
//         );
//       }
//     } catch (e) {
//       // Handle error jika gagal melakukan HTTP request
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Error: $e')),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: const MyAppBar(title: 'Create Forum'),
//       body: Container(
//         margin: const EdgeInsets.fromLTRB(20, 40, 20, 10),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text(
//               'What\'s in your thought?',
//               style: TextStyle(
//                 fontSize: 22,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(height: 10),
//             TextField(
//               onChanged: (text) {
//                 setState(() {
//                   // Menyimpan setiap perubahan teks dalam array comments
//                   comments.add(text);
//                   print(
//                       "Comments array: $comments"); // Bisa digunakan untuk debug
//                 });
//               },
//               controller: _controller,
//               minLines: 4,
//               maxLines: 4,
//               keyboardType: TextInputType.multiline,
//               decoration: InputDecoration(
//                 hintText: 'Write something',
//                 hintStyle: TextStyle(
//                   color: Color(0xff747474),
//                 ),
//                 enabledBorder: OutlineInputBorder(
//                   borderSide: BorderSide(
//                     color: Color(0xffD7D7D7),
//                   ),
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(10),
//                   ),
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   borderSide: BorderSide(
//                     color: Color(0xffD7D7D7),
//                   ),
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(10),
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 10),
//             GestureDetector(
//               onTap: () {},
//               child: Container(
//                 height: 50,
//                 decoration: BoxDecoration(
//                   border: Border.all(
//                     color: const Color(0xffD7D7D7),
//                   ),
//                   borderRadius: const BorderRadius.all(
//                     Radius.circular(10),
//                   ),
//                 ),
//                 child: const Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Icon(
//                       Icons.camera_alt_outlined,
//                       color: Color(0xff747474),
//                     ),
//                     SizedBox(width: 4),
//                     Text(
//                       'Gives photos or videos',
//                       style: TextStyle(
//                         fontSize: 13,
//                         fontWeight: FontWeight.normal,
//                         color: Color(0xff747474),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             const SizedBox(height: 40),
//             Buttons(
//               onPressed: () {
//                 // Mengirim data forum ke server, hanya mengirim teks terakhir dari array comments
//                 final comment = comments.isNotEmpty ? comments.last : '';
//                 if (comment.isNotEmpty) {
//                   postForum(comment); // Menambahkan forum ke database
//                 } else {
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     SnackBar(content: Text('Please write something to post!')),
//                   );
//                 }
//               },
//               text: 'Post',
//               buttonType: ButtonType.elevated,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:wasteless_application/component/buttons.dart';
import 'package:wasteless_application/component/my_app_bar.dart';

class AddForum extends StatelessWidget {
  const AddForum({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: 'Create Forum'),
      body: Container(
        margin: const EdgeInsets.fromLTRB(20, 40, 20, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'What\'s in your thought?',
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
                hintText: 'Write something',
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
              text: 'Post',
              buttonType: ButtonType.elevated,
            ),
          ],
        ),
      ),
    );
  }
}
