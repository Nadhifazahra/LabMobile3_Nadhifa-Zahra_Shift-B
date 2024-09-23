// import 'package:flutter/material.dart';
// import 'package:tugas3/sidemenu.dart';

// class AboutPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('About'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Tentang Aplikasi',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.lightBlue[700]),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Version: 1.0.0',
//               style: TextStyle(fontSize: 18),
//             ),
//             SizedBox(height: 10),
//             Text(
//               'This app is designed to help users manage their accounts, track their progress, and customize their settings. Developed using Flutter.',
//               style: TextStyle(fontSize: 16),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Contact Us:',
//               style: TextStyle(fontSize: 18),
//             ),
//             SizedBox(height: 10),
//             Text(
//               'Email: support@example.com',
//               style: TextStyle(fontSize: 16),
//             ),
//           ],
//         ),
//       ),
//       drawer: SideMenu(),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:tugas3/sidemenu.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue.shade700, // Warna tema biru
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Icon(
                  Icons.info_outline,
                  size: 100,
                  color: Colors.blue.shade700,
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  'Tentang Aplikasi',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlue[700],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Divider(color: Colors.blue.shade300, thickness: 2),
              SizedBox(height: 20),
              Text(
                'Versi:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade600,
                ),
              ),
              SizedBox(height: 5),
              Text(
                '1.0.0',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              SizedBox(height: 20),
              Text(
                'Deskripsi:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade600,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Dibuat untuk tugas Praktikum Pemrograman Mobile tentang Aplikasi dengan flutter yang mengimplementasikan routes, side menu, login, dan local storage.',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              SizedBox(height: 20),
              Text(
                'Kontak:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade600,
                ),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Icon(Icons.email, color: Colors.blue.shade700),
                  SizedBox(width: 10),
                  Text(
                    'nadhifa.kurniawan@mhs.unsoed.ac.id',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Divider(color: Colors.blue.shade300, thickness: 2),
              SizedBox(height: 20),
              Center(
                child: Text(
                  'Terimakasih!',
                  style: TextStyle(
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                    color: Colors.blue.shade700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: SideMenu(),
    );
  }
}
