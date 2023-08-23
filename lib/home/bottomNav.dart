import 'package:flutter/material.dart';
import 'package:hotel_booking/db/dbColor.dart';
import 'package:hotel_booking/db/dbIcons.dart';
import 'package:hotel_booking/home/home.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  var _selectIndex = 0;

  void nav(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  final List<Widget> pages = [
    Home(),
    Home(),
    Home(),
    Home(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              offset: Offset.fromDirection(
                3,
                1,
              ),
              color: Colors.grey.shade400,
              spreadRadius: 1,
              blurRadius: 5)
        ]),
        child: BottomNavigationBar(
          currentIndex: _selectIndex,
          unselectedIconTheme: IconThemeData(color: dbColorIcon),
          selectedIconTheme: IconThemeData(color: dbColorPrimary),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(dbIconHome), label: "Home"),
            BottomNavigationBarItem(icon: Icon(dbIconStar), label: "Star"),
            BottomNavigationBarItem(icon: Icon(dbIconChat), label: "chat"),
            BottomNavigationBarItem(
                icon: Icon(dbIconSettings), label: "Settings")
          ],
        ),
      ),
    );
  }
}
