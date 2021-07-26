import 'package:flutter/material.dart';
import 'package:newprojects/ui_practice/profile_page.dart';
import 'package:newprojects/ui_practice/search_ui.dart';

import 'chat_ui.dart';
import 'discovery_page.dart';


class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _pageIndex = 0;
  PageController _pageController;

  List<Widget> tabPages = [
    DiscoverySection(),
    SearchScreen(),
    ChatUI(),
    ProfileUser(),

  ];

  @override
  void initState(){
    super.initState();
    _pageController = PageController(initialPage: _pageIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIndex,
        onTap: onTabTapped,
        backgroundColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem( icon: Icon(Icons.home,color: Colors.black,),title: Text('')),
          BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.black,),title: Text('')),
          BottomNavigationBarItem(icon: Icon(Icons.chat,color: Colors.black,),title: Text('')),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.black,),title: Text('')),
        ],

      ),
      body: PageView(
        children: tabPages,
        onPageChanged: onPageChanged,
        controller: _pageController,
      ),
    );
  }
  void onPageChanged(int page) {
    setState(() {
      this._pageIndex = page;
    });
  }

  void onTabTapped(int index) {
    this._pageController.animateToPage(index,duration: const Duration(milliseconds: 500),curve: Curves.easeInOut);
  }
}
