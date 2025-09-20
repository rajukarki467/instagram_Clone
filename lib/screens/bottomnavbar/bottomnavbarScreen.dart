import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui/screens/heart/heartscreen.dart';
import 'package:instagram_ui/screens/home/homeScreen.dart';
import 'package:instagram_ui/screens/post/postscreen.dart';
import 'package:instagram_ui/screens/profile/profilescreen.dart';
import 'package:instagram_ui/screens/search/searchScreen.dart';
import 'package:instagram_ui/widgets/uihelper.dart';

class Bottomnavbarscreen extends StatefulWidget {
  const Bottomnavbarscreen({super.key});

  @override
  State<Bottomnavbarscreen> createState() => _BottomnavbarscreenState();
}

class _BottomnavbarscreenState extends State<Bottomnavbarscreen> {
  int currentIndex = 0;
  List<Widget> pages = [
    Homescreen(),
    Searchscreen(),
    Postscreen(),
    Heartscreen(),
    Profilescreen(),
  ];

  List<String> label = ["Home", "Search", "Post", "Heart", "Profile"];
  List<Icon> icons = [
    Icon(Icons.home),
    Icon(Icons.search),
    Icon(CupertinoIcons.plus_app),
    Icon(CupertinoIcons.heart),
    Icon(CupertinoIcons.profile_circled),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.black,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          for (int i = 0; i < pages.length; i++)
            BottomNavigationBarItem(icon: icons[i], label: label[i]),
        ],
      ),
      body: IndexedStack(children: pages, index: currentIndex),
    );
  }
}
