import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/setting_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Named Routes Demo',
      // Daftarkan semua named routes di sini
      routes: {
        '/': (context) => HomeScreen(), // Route default (home)
        '/profile': (context) => ProfileScreen(),
        '/settings': (context) => SettingScreen(),
      },
      initialRoute: '/', // Route pertama yang dibuka
    );
  }
}
