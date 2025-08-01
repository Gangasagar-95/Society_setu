import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFD8C1F8),
              Color(0xFF8951D7),
              Color(0xFF7637CF),
              Color(0xFF592B99),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Image.asset(
          "assets/images/applogo.PNG",
          width: 500,
          height:500,
        ),
      ),
    );
  }
}
