import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:society_setu/Color/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String hint;
  // final bool isDropdown;
  // final Widget? suffixIcon;

  const CustomTextField({
    super.key,
    required this.label,
    required this.hint,
    // this.isDropdown = false,
    // this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    SizedBox(width: 10);
    return Padding(
      padding: const EdgeInsets.only(bottom: 20,left: 15,right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: GoogleFonts.josefinSans(fontSize: 20)),
          SizedBox(
              height: 50,
              width: double.infinity,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: hint,
                  hintStyle: GoogleFonts.josefinSans(
                    fontSize: 18,
                    color: Appcolor.subtextcolor,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Appcolor.primarycolor),
                  ),
      
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Appcolor.primarycolor),
                  ),
                ),
              ),
            ),
          
        ],
      ),
    );
  }
}
