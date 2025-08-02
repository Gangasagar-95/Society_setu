import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:society_setu/Color/app_colors.dart';
import 'package:society_setu/Controller/eye_icon_controller.dart';
import 'package:society_setu/Routes/app_routes.dart';
import 'package:society_setu/custom_widget/logo_containers.dart';

class LoginScreen extends StatelessWidget {
  final eyeIconcontrollerobj = Get.put(EyeIconController());
  final emailCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  void login() {
    if (_formkey.currentState!.validate()) {
      Get.offNamed(Approutes.splashscreen);
    }
  }

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        backgroundColor: Appcolor.bgcolor,

        body: SingleChildScrollView(
        
          child: Form(
            key: _formkey,
            child: Column(
            
              children: [
                Center(
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/newapplogo.png",
                        height: 300,
                        width: 300,
                      ),
                      Text(
                        "Login to your Account",
                        style: TextStyle(
                          color: Appcolor.textcolor,
                          fontSize: 24,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                          right: 20,
                          top: 20,
                          bottom: 20,
                        ),
                        child: TextFormField(
                          controller: emailCtrl,
                          decoration: InputDecoration(
                         
                            hintText: "Enter your email",
                            prefixIcon: Icon(
                              Icons.email,
                              size: 20,
                              color: Colors.grey,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Appcolor.primarycolor,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return "email can not be null";
                            }
                            if (!RegExp(
                              r'^[^@]+@[^@]+\.[^@]+',
                            ).hasMatch(value)) {
                              return "enter a valid email";
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                          right: 20,
                          bottom: 30,
                        ),
                        child: TextFormField(
                          controller: passwordCtrl,
                          obscureText: eyeIconcontrollerobj.eye.value,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Appcolor.primarycolor,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            
                            suffixIcon: IconButton(
                              icon: Icon(
                                eyeIconcontrollerobj.eye == false
                                    ? Icons.remove_red_eye
                                    : Icons.visibility_off,
                                size: 20,

                                color: eyeIconcontrollerobj.eye == false
                                    ? Colors.red
                                    : Appcolor.primarycolor,
                              ),
                              onPressed: () {
                                eyeIconcontrollerobj.eyeicon();
                              },
                            ),
                            hintText: "Enter  your password",
                            prefixIcon: Icon(
                              Icons.lock,
                              size: 20,
                              color: Colors.black,
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return "password is required and can not be null";
                            }
                            if (value.length < 7) {
                              return "Password must be atleast 7 character";
                            }
                            return null;
                          },
                        ),
                      ),

                      ElevatedButton(
                        onPressed: () {
                          login();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Appcolor.buttoncolor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 120,
                            right: 120,
                            // top: 10,
                            // bottom: 10,
                          ),
                          child: Text(
                            "Sign in",
                            style: TextStyle(
                              color: Appcolor.textcolor,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),

                      Align(
                        alignment: Alignment.bottomRight,
                        child: TextButton(
                          onPressed: () {
                            Get.toNamed(Approutes.forgotpassword);
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                              right: 20,
                              bottom: 40,
                            ),
                            child: Text(
                              "Forgot password?",
                              style: TextStyle(color: Appcolor.primarycolor),
                            ),
                          ),
                        ),
                      ), 
                      Text(
                        "-Or sign in with-",
                        style: TextStyle(
                          fontSize: 16,
                          color: Appcolor.subtextcolor,
                        ),
                      ),
                      
                      Padding( 
                        padding: const EdgeInsets.only(
                          left: 24,
                          right: 24,
                        
                        ),
                        child: Row( 
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            LogoContainers(
                              assetimage: "assets/images/google_logo.png",
                            ),
                            SizedBox(width: 20),
                            LogoContainers(
                              assetimage: "assets/images/facebook_logo.png",
                            ),
                            SizedBox(width: 20),
                            LogoContainers(
                              assetimage:
                                  "assets/images/Twitter_logo-removebg-preview.png",
                            ),
                          ],
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don’t have an account?",
                            style: TextStyle(
                              color: Appcolor.subtextcolor,
                              fontSize: 16,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Get.toNamed(Approutes.createaccount);
                            },
                            child: Text(
                              "Sign up",
                              style: TextStyle(
                                color: Appcolor.primarycolor,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
