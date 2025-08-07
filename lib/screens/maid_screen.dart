

import 'package:flutter/material.dart';

import 'package:society_setu/Color/app_colors.dart';
import 'package:society_setu/custom_widget/custom_button.dart';
import 'package:society_setu/custom_widget/subtitle.dart';


class MaidScreen extends StatelessWidget {
  const MaidScreen({super.key});

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

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
       
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    "assets/images/maid.jpg",
                    height: 150,
                    width: 150,
                  ),
                ),
                Center(
                  child: Text(
                    "Maid Not coming",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20),
            
              
                 Subtitle(text: "Maid Category" ),
                Padding(
                  padding: const EdgeInsets.only(
                   
                    top: 10,
                    bottom: 20,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Appcolor.primarycolor,
                        ),
                       borderRadius: BorderRadius.circular(8),),
                      
                      hintText: "Select Maid Category",
                      hintStyle: TextStyle(color: Appcolor.subtextcolor, fontSize: 16),
                  )  ),
                ),
                
            
              
              Subtitle(text: "Date of Absence" ),
                Padding(
                  padding: const EdgeInsets.only(
                    
                    top: 10,
                    bottom: 20,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Appcolor.primarycolor,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      hintText: "00/00/2025",
                      hintStyle: TextStyle(color: Appcolor.subtextcolor, fontSize: 16),
                    ),
                  ),
                ),
            
               
             Subtitle(text:"Description" ),
                Padding(
                  padding: const EdgeInsets.only(
                    
                    top: 10,
                    bottom: 20,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Appcolor.primarycolor,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      hintText: " Complaint",
                      hintStyle: TextStyle(color: Appcolor.subtextcolor, fontSize: 16),
                    ),
                  ),
                ),
                CustomButton(text:"Submit Complaint", onPressed: () {  }, ),
                SizedBox(height: 15),
                Row(
                  children: [
                    SizedBox(width: 20),
                    Text(
                      "Call maid ?",
                      style: TextStyle(color: Appcolor.pcolor, fontSize: 20),
                    ),
                  ],
                ),
            
                SizedBox(height: 15),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 160,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Appcolor.buttoncolor,
                  ),
            
                  child: Column(
                    children: [
                      SizedBox(height: 15),
                      Row(
                        children: [
                          SizedBox(width: 10),
                          Text(
                            "Sunita Sathe ",
                            style: TextStyle(
                              color: Appcolor.subtextcolor,
                              fontSize: 25,
                            ),
                          ),
                          SizedBox(width: 90),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Appcolor.gcolor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Text(
                              "Call Now",
                              style: TextStyle(
                                color: Appcolor.bgcolor,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
            
                      Row(
                        children: [
                          SizedBox(width: 10),
            
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Sweeper",
                                style: TextStyle(
                                  color: Appcolor.bcolor,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Avaiable: 8 AM to 8 PM",
                                style: TextStyle(
                                  color: Appcolor.subtextcolor,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                "Towers: A,B And C",
                                style: TextStyle(
                                  color: Appcolor.subtextcolor,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),]
            )
            ),
          
        ),
      
    );
  }
}
