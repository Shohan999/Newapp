import 'dart:ui';

import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Newapp extends StatefulWidget {
  const Newapp({Key? key}) : super(key: key);

  @override
  State<Newapp> createState() => _NewappState();
}

class _NewappState extends State<Newapp> {
  int _selectedIndex=3;
  static final List<Widget>_widgetOptions =<Widget>[
    const Text("Home"),
    const Text("Search"),
    const Text("City"),
    const Text("Profile"),
  ];

  void _onItemTapped(int index){
    _selectedIndex=index;
    print('${_selectedIndex}');
    print(_selectedIndex.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My first App"),
      ),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xFF526480),
        items: const [
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
            label: "Home"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              label: "Search"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_city_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_city_filled),
              label: "city"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_people_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_people_filled),
              label: "profile"),
      ],),
    );
  }
}
