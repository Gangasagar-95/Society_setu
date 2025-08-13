import 'package:flutter/material.dart';
import 'package:society_setu/Color/app_colors.dart';
import 'package:society_setu/screens/complaint.dart';
import 'package:society_setu/screens/dashboard.dart';
import 'package:society_setu/screens/notification_screen.dart';
import 'package:society_setu/screens/profile_screen.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _selectedIndex = 0;
  final List<Widget> _Screens = [
    Dashscreen(),
    Complaints(),
    Center(
      child: Icon(Icons.add_circle_outline, size: 80, color: Appcolor.bcolor),
    ),
    NotificationScreen(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _Screens[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Appcolor.bgcolor,
        selectedIconTheme: IconThemeData(color: Appcolor.primarycolor),
        selectedItemColor: Appcolor.subtitlecolor,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Appcolor.buttoncolor,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.article_outlined),
            label: "Complaints",
          ),
          
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline,size: 40,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
