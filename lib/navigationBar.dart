import 'package:flutter/material.dart';
import 'package:t2_dsw/pages/createpost.page.dart';

import 'package:t2_dsw/const/colors.dart';
import 'hamburguer.dart';
import 'package:t2_dsw/pages/home.page.dart';
import 'main.dart';
import 'navigationBar.dart';

class NavigationBarApp extends StatefulWidget {
  const NavigationBarApp({super.key});

  @override
  State<NavigationBarApp> createState() => _NavigationBarAppState();
}

class _NavigationBarAppState extends State<NavigationBarApp> {
  int _selectedIndex = 0;

  final List<Widget> pageOptions = [
    Home(),
    CreatePost(),
    Text(
      'Index 2: School',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'GM',
          style: TextStyle(
            color: blackColor,
          ),
        ),
        centerTitle: true,
        backgroundColor: whiteColor,
        iconTheme: IconThemeData(color: blackColor),
      ),
      body: Center(
        child: pageOptions[_selectedIndex],
      ),
      drawer: HamburguerMenu(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Post',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: purpleColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
