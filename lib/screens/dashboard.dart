import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:society_setu/Routes/app_routes.dart';
import 'package:society_setu/custom_widget/dashbour_blue_container.dart';
import 'package:society_setu/custom_widget/outline_button_dashboard.dart';

class Dashscreen extends StatelessWidget {
  const Dashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            CustomTopAppBar(text: "Dashboard",),
            SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.only(left: 30, right: 20),
              child: Row(
                children: [
                  CustomOutlineButton(
                    title: "Maid Not Coming",

                    imagePath: "assets/images/maid.jpg",
                    onPressed: () {
                      Get.toNamed(Approutes.maidscreen);
                    },
                  ),
                  SizedBox(width: 15),
                  CustomOutlineButton(
                    title: "Street light not working",
                    imagePath: "assets/images/lamp_light.jpg",
                    onPressed: () {
                      Get.toNamed(Approutes.streetlightscreen);
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 20),
              child: Row(
                children: [
                  CustomOutlineButton(
                    title: "Garbage not picked up",
                    imagePath: "assets/images/Garbage_problem.jpg",
                    onPressed: () {
                      Get.toNamed(Approutes.garbagescreen);
                    },
                  ),
                  SizedBox(width: 15),
                  CustomOutlineButton(
                    title: "Dog Menace",
                    imagePath: "assets/images/dog_problem.jpg",
                    onPressed: () {
                      Get.toNamed(Approutes.dogproblemscreen);
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 20),
              child: Row(
                children: [
                  CustomOutlineButton(
                    title: "No water supply",
                    imagePath: "assets/images/no_water_supply.jpg",
                    onPressed: () {
                      Get.toNamed(Approutes.nowaterscreen);
                    },
                  ),
                  SizedBox(width: 15),
                  CustomOutlineButton(
                    title: "tenant issues",
                    imagePath: "assets/images/tenant_issues.jpg",
                    onPressed: () {
                      Get.toNamed(Approutes.tenantissuescreen);
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 20),
              child: Row(
                children: [
                  CustomOutlineButton(
                    title: "Others Problem",
                    imagePath: "assets/images/others_problem.jpg",
                    onPressed: () {
                      Get.toNamed(Approutes.othersproblemscreen);
                    },
                  ),
                  SizedBox(width: 15),
                  CustomOutlineButton(
                    title: "Power Cut Schedual",
                    imagePath: "assets/images/power_cut.jpg",
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
