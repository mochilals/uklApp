import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Navigasi ke halaman utama setelah 3 detik
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/l');
    });

    return Scaffold(
      backgroundColor: const Color(0xFF002366), // Warna latar biru tua
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/tix.png', // Gambar hadiah
              width: 150,
            ),
            const SizedBox(height: 20),
            const Text(
              'TIX VIP, lebih seru, koin melimpah,\n dapat hadiah!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Gabung TIX VIP dan kumpulkan koin\n untuk mendapatkan hadiah dan diskon.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white70,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
