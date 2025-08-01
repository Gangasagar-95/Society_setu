import 'package:flutter/material.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

 body: 
 Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFD8C1F8), 
              Color(0xFF8951D7),
              Color(0xFF7637CF),
              Color(0xFF592B99)
            ],
           // begin: Alignment.topCenter,
            //end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              Image.asset(
                "assets/images/applogo.png",
                width: 1000,
                height:100,
              ),
              const SizedBox(height: 20),
              const Text(
                'Society setu ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}