import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:message_apps/Screens/Menu/chat.dart';
import 'package:message_apps/Screens/Menu/home.dart';
import 'package:message_apps/Screens/Menu/profile.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int currentIndex = 0;
  final List<Widget> children = [Home(), Chat(), Profile()];

  void onTabBar(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.pinkAccent[400],
          selectedFontSize: 13.8,
          unselectedFontSize: 12.0,
          currentIndex: currentIndex,
          onTap: onTabBar,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.home,
                size: 24,
              ),
              title: Text(
                'Home',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.solidCommentDots,
                size: 24,
              ),
              title: Text(
                'Message',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.userCircle,
                size: 24,
              ),
              title: Text(
                'Account',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        body: children[currentIndex],
      ),
    );
  }
}
