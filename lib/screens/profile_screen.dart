import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:society_setu/Color/app_colors.dart';
import 'package:society_setu/Routes/app_routes.dart';
import 'package:society_setu/custom_widget/textformfield.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.bgcolor,
      appBar: AppBar(
        backgroundColor: Appcolor.primarycolor,

        leading: IconButton(
          onPressed: () {
            Get.toNamed(Approutes.tabscreen);
          },
          icon: Icon(Icons.arrow_back_ios_new_outlined),
        ),

        title: Text(
          "Profile",
          style: GoogleFonts.josefinSans(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Appcolor.subtitlecolor,
          ),
        ),
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 50),

            Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/images/profile.jpeg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: 20),

            Row(
              children: [
                SizedBox(width: 15),
                Text(
                  "Basic Details",
                  style: GoogleFonts.josefinSans(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Appcolor.subtitlecolor,
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            CustomTextField(label: "Full Name", hint: "Vaishnvi Mahurkar"),

            CustomTextField(label: "Date of birth", hint: "23/07/2025"),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 15),
                Text(
                  "Contact Details",
                  style: GoogleFonts.josefinSans(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Appcolor.subtitlecolor,
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),

            CustomTextField(label: "Mobile Number", hint: "7822027057"),
          ],
        ),
      ),
    );
  }
}
