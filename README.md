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
1. class SideMenu extends StatelessWidget {
   - Kelas untuk membuat sidemenu.
2. void _logout(BuildContext context) async {
   SharedPreferences prefs = await SharedPreferences.getInstance();
   prefs.setBool('isLoggedIn', false);
   Navigator.pushReplacementNamed(context, '/login');
   }
   - Menghapus status login dari SharedPreferences dan mengarahkan kembali ke halaman login.
3. return Drawer(
   child: ListView(
   ...
   - Membuat menu drawer dengan daftar item yang bisa dipilih, seperti Profil, Jadwal, Tugas, Tentang, dan Logout.

## profile_page.dart
1. class ProfilePage extends StatelessWidget {
   - Kelas untuk menampilkan halaman profil pengguna.
2. return Scaffold(
  appBar: AppBar(...),
  body: Padding(...),
   - Struktur dasar halaman dengan AppBar dan konten di body.
3. CircleAvatar(...),
   - Menampilkan avatar pengguna di halaman profil.
4. Text('Nama: Nadhifa Zahra Kurniawan'),
   - Menampilkan informasi pengguna, seperti nama, NIM, dan shift baru.
5. ElevatedButton(...),
   - Tombol untuk mengedit profil yang akan dihubungkan dengan logika pengeditan yang sesuai.
  
## login_page.dart
1. class LoginPage extends StatefulWidget {
   - Kelas untuk halaman login yang bersifat Stateful.
2. final TextEditingController _usernameController = TextEditingController();
   final TextEditingController _passwordController = TextEditingController();
   - Kontrol untuk input username dan password.
3. void _login() async {
   if (_usernameController.text == 'admin' && _passwordController.text == 'admin') {
      ...
     }
   }
   - Memeriksa kredensial pengguna. Jika benar, menyimpan status login dan mengarahkan ke dashboard.
4. TextField untuk input username dan password, dan ElevatedButton untuk login.

## dashboard_page.dart
1. class DashboardPage extends StatelessWidget {
   - Kelas untuk menampilkan halaman dashboard.
2. final List<Map<String, String>> todaySchedule = [...];
   - Daftar jadwal hari ini yang akan ditampilkan.
3. Expanded(
   child: ListView.builder(
      itemCount: todaySchedule.length,
      itemBuilder: (context, index) {
         ...
       },
     ),
   - Menggunakan ListView.builder untuk menampilkan daftar jadwal dalam bentuk kartu.
  
## task_page.dart
1. class TaskPage extends StatelessWidget {
   - Kelas untuk menampilkan halaman tugas.
2. final List<Map<String, String>> todoList = [...];
   - Daftar tugas yang akan ditampilkan di halaman ini.
3. Expanded(
      child: ListView.builder(
         itemCount: todoList.length,
         itemBuilder: (context, index) {
            ...
         },
      ),
   - Menggunakan ListView.builder untuk membuat daftar tugas, mirip dengan dashboard.

## about_page.dart
1. class AboutPage extends StatelessWidget {
   - Kelas untuk menampilkan informasi tentang aplikasi.
2. Text('Tentang Aplikasi'),
   Text('Versi: 1.0.0'),
   - Menampilkan informasi tentang versi aplikasi, deskripsi, dan kontak.
3. SingleChildScrollView untuk menghindari masalah overflow saat informasi banyak.

# Screenshot Aplikasi
1. <br>**Login Page**
   <img src="https://github.com/user-attachments/assets/6fbd54d2-336c-4fef-b36c-09fe2327b00e" alt="Login" width="300"/>

2. <br>**Profile Page**
   <img src="https://github.com/user-attachments/assets/930bb80e-97e9-4c4b-b827-41cc657d4ef9" alt="Profile" width="300"/>

3. <br>**Schedule Page**
   <img src="https://github.com/user-attachments/assets/503524d2-af46-44b4-92bd-1d81c29321a5" alt="Schedule" width="300"/>

4. <br>**Task Page**
   <img src="https://github.com/user-attachments/assets/049a0e20-cbb8-4042-b94a-12460278d775" alt="Task" width="300"/>

5. <br>**About Page**
   <img src="https://github.com/user-attachments/assets/ed4f054f-19dc-4702-b503-5a2939f7775d" alt="About" width="300"/>

6. <br>**Side Menu**
   <img src="https://github.com/user-attachments/assets/44b8f723-72d9-433e-8c39-6a6be4ab3fc2" alt="Side Menu" width="300"/>





