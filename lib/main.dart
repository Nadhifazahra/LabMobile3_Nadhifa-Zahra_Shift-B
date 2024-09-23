import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tugas3/pages/dashboard_page.dart';
import 'package:tugas3/pages/login_page.dart';
import 'package:tugas3/pages/profile_page.dart';
import 'package:tugas3/pages/task_page.dart';
import 'package:tugas3/pages/about_page.dart';

void main() async {
  // Initialize WidgetsFlutterBinding to ensure shared preferences is ready
  WidgetsFlutterBinding.ensureInitialized();

  // Get the saved login status from shared preferences
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;

  runApp(MyApp(isLoggedIn: isLoggedIn));
}

class MyApp extends StatelessWidget {
  final bool isLoggedIn;

  MyApp({required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Set initial route based on login status
      initialRoute: isLoggedIn ? '/dashboard' : '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/dashboard': (context) => DashboardPage(),
        '/profile': (context) => ProfilePage(),
        '/task': (context) => TaskPage(),
        '/about': (context) => AboutPage(),
      },
    );
  }
}
