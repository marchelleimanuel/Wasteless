import 'package:flutter/material.dart';
import 'package:wasteless_application/component/forum_cards.dart';
import 'package:wasteless_application/component/menu_bar.dart';

class Forum extends StatelessWidget {
  const Forum({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // forum
              ForumCards(
                photoProfilePath: 'assets/icon/photo-profile.png',
                username: 'Bian',
                date: '21 Feb, 2024',
                discussion:
                    'What\'s the Best Way to Handle Expiring Products in Supermarkets?',
              ),

              ForumCards(
                photoProfilePath: 'assets/icon/photo-profile.png',
                username: 'Shelvia',
                date: '21 Feb, 2024',
                discussion:
                    'What Can Supermarkets Do with Surplus Food Before It Expires?',
              ),

              ForumCards(
                photoProfilePath: 'assets/icon/photo-profile.png',
                username: 'Panjul',
                date: '21 Feb, 2024',
                discussion:
                    'How Can Supermarkets Make Better Use of Surplus Food?',
              ),

              ForumCards(
                photoProfilePath: 'assets/icon/photo-profile.png',
                username: 'Davin',
                date: '21 Feb, 2024',
                discussion:
                    'Can Supermarkets Really Go Zero-Waste or Is It Just Marketing?',
              ),

              ForumCards(
                photoProfilePath: 'assets/icon/photo-profile.png',
                username: 'Marsel',
                date: '21 Feb, 2024',
                discussion: 'How you guys contributed in wasteless program?',
              ),
              SizedBox(height: 80),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const MenuBars(
        menuBarPage: 'forum',
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.only(bottom: 15),
        child: FloatingActionButton(
          onPressed: () => Navigator.pushNamed(context, '/add-forum'),
          backgroundColor: const Color(0xff83942B),
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:wasteless_application/component/forum_cards.dart';
// import 'package:wasteless_application/component/menu_bar.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class Forum extends StatefulWidget {
//   const Forum({super.key});

//   @override
//   _ForumState createState() => _ForumState();
// }

// class _ForumState extends State<Forum> {
//   List<dynamic> forums = []; // Variabel untuk menyimpan data forum

//   // Fungsi untuk mengambil data forum dari API
//   Future<void> fetchForums() async {
//     final response =
//         await http.get(Uri.parse('http://192.168.0.103:3000/forums'));

//     if (response.statusCode == 200) {
//       setState(() {
//         forums = jsonDecode(response.body); // Update daftar forum
//       });
//     } else {
//       print('Request failed with status: ${response.statusCode}.');
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//     fetchForums(); // Panggil fungsi fetchForums saat halaman pertama kali dimuat
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               SizedBox(height: 20),
//               // Menampilkan daftar forum yang diambil dari API
//               ...forums.map((forum) {
//                 return ForumCards(
//                   photoProfilePath:
//                       'assets/icon/photo-profile.png', // Ganti dengan data yang sesuai
//                   username: forum['nama'], // Ganti dengan data yang sesuai
//                   date: forum['forum_date'], // Ganti dengan data yang sesuai
//                   discussion: forum['comment'], // Gunakan data forum dari API
//                 );
//               }).toList(),
//               const SizedBox(height: 80),
//             ],
//           ),
//         ),
//       ),
//       bottomNavigationBar: const MenuBars(
//         menuBarPage: 'forum',
//       ),
//       floatingActionButton: Container(
//         margin: const EdgeInsets.only(bottom: 15),
//         child: FloatingActionButton(
//           onPressed: () => Navigator.pushNamed(context, '/add-forum'),
//           backgroundColor: const Color(0xff83942B),
//           child: const Icon(
//             Icons.add,
//             color: Colors.white,
//           ),
//         ),
//       ),
//     );
//   }
// }