
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:society_setu/screens/Homescreen.dart';
import 'package:society_setu/screens/create_account_screen.dart';
import 'package:society_setu/screens/email_verification_screen.dart';
import 'package:society_setu/screens/forgot_password_screen.dart';
import 'package:society_setu/screens/login_screen.dart';
import 'package:society_setu/screens/reset_password_screen.dart';
import 'package:society_setu/screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? token = prefs.getString('token');
  runApp(MyApp(token: token));

  print("token in main.dart:$token");
}

class MyApp extends StatelessWidget {
  final String? token;
  const MyApp({super.key, required this.token});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/', //token == null ? 'dummyscreen' : '/Tab_screen',

      routes: {
        "/": (context) => SplashScreen(),
        "/login_screen": (context) => LoginScreen(),
        "/create_account_Screen": (context) => CreateAccount(),
        "/forgot_password_screen": (context) => ForgotPassword(),
        "/email_verification_screen": (context) => EmailVerification(),
        "/reset_password_screen": (context) => ResetPassword(),
        "/splash_screen": (context) => SplashScreen(),
        "/home_screen": (context) => Homescreen(),
      },
    );
  }
}
