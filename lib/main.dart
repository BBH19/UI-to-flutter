import 'package:boelicious/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BoeLiciousApp());
}

class BoeLiciousApp extends StatelessWidget {
  const BoeLiciousApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
             GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  WelcomeScreen()),
                );
              },
              child:  Image.asset(
              'assets/logo.jpg',
              width: 300,
              height: 300,
            ),
            ),
            // Logo Image
           
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
