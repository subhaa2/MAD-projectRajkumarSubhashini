import 'package:flutter/material.dart';
import 'package:project/chat.dart';
import 'package:project/chat2.dart';
import 'package:project/home.dart';
import 'package:project/profile.dart';
import 'package:project/rewards.dart';
import 'package:project/shop.dart';
import 'main.dart';

class BottomNavBar extends StatefulWidget {
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  // List pages = [
  //   ["Home", Icons.home, HomePage(), Colors.red],
  //   ["Reward", Icons.monetization_on, RewardsPage(), Colors.red],
  //   ["Shop", Icons.add_shopping_cart, ShopPage(), Colors.red],
  //   ["Chat", Icons.chat_rounded, ChatPage(), Colors.red],
  //   ["Profile", Icons.account_circle_rounded, ProfilePage(), Colors.red],
  // ];
  final pages = [
    HomePage(),
    RewardsPage(),
    ShopPage(),
    ChatPage(),
    ChatBot(),
    ProfilePage()
  ];
  final title = [
    "Home",
    "Reward",
    "Shop",
    "Chat",
    'Ask!',
    "Profile",
  ]; //appbar title
  final icon = [
    Icon(Icons.home),
    Icon(Icons.monetization_on),
    Icon(Icons.add_shopping_cart),
    Icon(Icons.chat),
    Icon(Icons.search_rounded),
    Icon(Icons.account_circle_rounded),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.green,
        items: [
          for (var i = 0; i < pages.length; i++) ...[
            BottomNavigationBarItem(
              label: title[i],
              icon: icon[i],
            ),
          ],
          BottomNavigationBarItem(
              label: "Logout", icon: Icon(Icons.exit_to_app)),
        ],
        onTap: (index) {
          if (index == pages.length) {
            // Handle logout logic here
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AboutUsPage()));
          } else {
            setState(() {
              _currentIndex = index;
            });
          }
        },
      ),
    );
  }
}
