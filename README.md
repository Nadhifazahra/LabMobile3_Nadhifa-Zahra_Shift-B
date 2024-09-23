# Penjelasan Kode

## main.dart
1. import 'package:flutter/material.dart';
   import 'package:shared_preferences/shared_preferences.dart';
    - flutter/material.dart: Mengimport paket Flutter Material Design yang menyediakan widget dan tema untuk membuat UI.
    - shared_preferences: Mengimport paket untuk menyimpan data sederhana secara lokal di perangkat, seperti status login.
2. void main() async {
   WidgetsFlutterBinding.ensureInitialized();
    - Memastikan bahwa binding Flutter diinisialisasi sebelum menjalankan aplikasi.
3. SharedPreferences prefs = await SharedPreferences.getInstance();
   bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
    - Mendapatkan instance SharedPreferences untuk membaca data yang disimpan.
    - Memeriksa status login dari SharedPreferences. Jika tidak ada, default-nya adalah false.
4. class MyApp extends StatelessWidget {
    - Kelas utama yang menyusun widget aplikasi.
5. return MaterialApp(
   title: 'Flutter App',
   theme: ThemeData(primarySwatch: Colors.blue),
    - Mengatur judul dan tema aplikasi. Tema menggunakan warna biru sebagai swatch utama.
6. initialRoute: isLoggedIn ? '/dashboard' : '/login',
    - Menentukan route awal aplikasi berdasarkan status login. Jika isLoggedIn adalah true, maka ke dashboard; jika false, ke login.
7. routes: {
   '/login': (context) => LoginPage(),
   ...
   }
   - Mendefinisikan rute aplikasi dan widget yang terkait, termasuk halaman login, dashboard, profil, tugas, dan tentang.

## sidemenu.dart
