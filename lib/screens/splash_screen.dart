import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:society_setu/screens/Homescreen.dart';
import 'dart:async';

import 'package:society_setu/screens/login_screen.dart'; // for Timer

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  String token = ''; // ← You can fetch from SharedPreferences or secure storage

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat();
    Timer(Duration(seconds: 5), checkLogin);
  }

  void checkLogin() {
    if (token.isNotEmpty) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Homescreen()),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
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
        child: 
        RotationTransition(
          turns: _controller,
          child: Image.asset(
            "assets/images/applogo.PNG",
            width: 500,
            height: double.infinity,
          ),
        ),
      ),
    );
  }
}
