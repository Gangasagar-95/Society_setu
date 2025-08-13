import 'package:flutter/material.dart';
import 'package:society_setu/screens/dashboard.dart';

import 'package:society_setu/screens/login_screen.dart';
import 'package:society_setu/screens/tabs.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  
  String token = '';

  void checkLogin() {
    if (token.isNotEmpty) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Dashscreen()),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Tabs()),
      );
    }
  }

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
        child: Center(
          child: Image.asset(
            "assets/images/applogo.PNG",
            width: 400,
            height: 400,
          ),
        ),
      ),
    );
  }
}
