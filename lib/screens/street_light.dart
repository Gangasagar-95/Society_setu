import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:society_setu/Color/app_colors.dart';
import 'package:society_setu/custom_widget/call_container.dart';
import 'package:society_setu/custom_widget/custom_button.dart';
import 'package:society_setu/custom_widget/textformfield.dart';

class Streetlight extends StatelessWidget {
  const Streetlight({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.bgcolor,
      appBar: AppBar(
        backgroundColor: Appcolor.bgcolor,
        leading: Icon(Icons.menu),
        actions: [
          Row(children: [Icon(Icons.person_2_rounded), SizedBox(width: 15)]),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(25),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  "assets/images/lamp_light.jpg",
                  height: 150,
                  width: 150,
                ),
              ),
              Center(
                child: Text(
                  "Street light Not Working",
                  style: GoogleFonts.josefinSans(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              SizedBox(height: 20),

              CustomTextField(label: "Location", hint: "Main gate"),

              CustomTextField(label: "Description", hint: "Complaint details"),

              CustomButton(text: "Submit Complaint", onPressed: () {}),
              SizedBox(height: 25),

              Text(
                "Call Electrician/ Municipality ?",
                textAlign: TextAlign.left,
                style: GoogleFonts.josefinSans(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Appcolor.pcolor,
                ),
              ),

              SizedBox(height: 1),

              ContactCard(
                name: "Ram Dhale",
                role: "Muncipality",
                availableTime: "8 AM to 9 PM",
                towers: "A,B,C",
                onCallTap: () {},
              ),
              ContactCard(
                name: "Raja Dhale",
                role: "Electrician",
                availableTime: "8 AM to 9 PM",
                towers: "A,B,C",
                onCallTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
