import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_best_self/presentation/navbar/navbar.dart';
import 'package:my_best_self/presentation/views/home_screen.dart';
import 'package:my_best_self/presentation/views/points_screen.dart';
import 'package:my_best_self/presentation/views/profile_screen.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _MainpageState createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    GameScreen(),
    ProfileScreen(),
    const Placeholder(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFloatingActionButton(
        onPressed: () =>
            Get.toNamed('/templatepage/'), // Action for the center button
      ),
    );
  }
}
