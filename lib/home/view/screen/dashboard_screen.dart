// home/view/screen/dashboard_screen.dart
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:pos_sibayar/home/view/home_sxreen.dart';
import 'gift_screen.dart';
import 'settings_screen.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    GiftScreen(),
    SettingsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(
            left: 16.0, right: 16.0, bottom: 16.0), // Padding for spacing
        margin: const EdgeInsets.only(
            left: 16.0,
            right: 16.0,
            bottom: 20.0), // Horizontal margin for left and right spacing
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:
              BorderRadius.all(Radius.circular(20)), // Uniform border radius
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              spreadRadius: 2,
              offset: Offset(0, -4),
            ),
          ],
        ),
        child: GNav(
          gap: 8,
          padding: EdgeInsets.symmetric(
              horizontal: 20, vertical: 12), // Adjusted padding for buttons
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'Home',
              iconColor: Colors.blue, // Customize icon color
              borderRadius:
                  BorderRadius.circular(20), // Rounded borders for each button
            ),
            GButton(
              icon: Icons.card_giftcard,
              text: 'Gift',
              iconColor: Colors.pink,
              borderRadius: BorderRadius.circular(20),
            ),
            GButton(
              icon: Icons.settings,
              text: 'Settings',
              iconColor: Colors.green,
              borderRadius: BorderRadius.circular(20),
            ),
          ],
          selectedIndex: _selectedIndex,
          onTabChange: _onItemTapped,
        ),
      ),
    );
  }
}
