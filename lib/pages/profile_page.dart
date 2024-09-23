import 'package:flutter/material.dart';
import 'package:tugas3/sidemenu.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue.shade700,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Judul Halaman
            Text(
              'Profil Saya',
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade700),
            ),
            SizedBox(height: 30),

            // Avatar Pengguna
            CircleAvatar(
              radius: 50,
              // backgroundImage: AssetImage('assets/user.jpg'), // Gambar profil
            ),
            SizedBox(height: 20),

            // Informasi Pengguna
            Text(
              'Nama: Nadhifa Zahra Kurniawan',
              style: TextStyle(fontSize: 18, color: Colors.black87),
            ),
            SizedBox(height: 10),
            Text(
              'NIM: H1D022020',
              style: TextStyle(fontSize: 18, color: Colors.black87),
            ),
            SizedBox(height: 10),
            Text(
              'Shift Baru: B',
              style: TextStyle(fontSize: 18, color: Colors.black87),
            ),
            SizedBox(height: 30),

            // Tombol Edit Profil
            ElevatedButton(
              onPressed: () {
                // Handle Edit Profile logic
              },
              child: Text(
                'Edit Profile',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade700, // Warna tombol biru muda
              ),
            ),
          ],
        ),
      ),
      drawer: SideMenu(), // Drawer dengan SideMenu
    );
  }
}
