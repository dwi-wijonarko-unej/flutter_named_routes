import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Terima data yang dikirim dari HomeScreen
    final Map<String, dynamic> args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    final username = args['username'] ?? 'Guest';
    final umur = args['umur'] ?? 0; // Ambil data umur jika ada

    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Halo, $username!'), // Tampilkan data
            Text('Umur: $umur tahun'), // Tampilkan data umur
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Kembali'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
