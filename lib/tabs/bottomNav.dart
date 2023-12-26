import 'package:flutter/material.dart';

import '../gridview/gridview2.dart';
import '../listview/listview2.dart';

void main() {
  runApp(MaterialApp(
    home: BottomNav(),
  ));
}

class BottomNav extends StatefulWidget {
  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  var index = 0;
  var screens = [
    Gridview2(),
    Listview2(),
    Gridview2(),
    Listview2(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
          onTap: (tapIndex) {
            setState(() {
              index = tapIndex;
            });
          },
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.black,
          backgroundColor: Colors.red,
          currentIndex: index,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.green,
                icon: Icon(
                  Icons.search,
                 // color: Colors.red,
                ),
                label: "search"),
            BottomNavigationBarItem(
              backgroundColor: Colors.yellow,
                icon: Icon(
                  Icons.home,
                 // color: Colors.red,
                ),
                label: "Home"),
            BottomNavigationBarItem(
              backgroundColor: Colors.blue,
                icon: Icon(
                  Icons.person,
                  //color: Colors.red,
                ),
                label: "profile"),
            BottomNavigationBarItem(
              backgroundColor: Colors.purple,
                icon: Icon(
                  Icons.settings,
                 // color: Colors.red,
                ),
                label: "settings")
          ]),
      body: screens[index],
    );
  }
}
