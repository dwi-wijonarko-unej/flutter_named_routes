import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Ke Profile'),
              onPressed: () {
                // Navigasi ke profile dengan named route
                Navigator.pushNamed(context, '/profile');
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Ke Settings'),
              onPressed: () {
                // Navigasi dengan mengirim data
                Navigator.pushNamed(
                  context,
                  '/settingsss',
                  arguments: {
                    'username': 'JohnDoe'
                  }, // Data dikirim sebagai Map
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
