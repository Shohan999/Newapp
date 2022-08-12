import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Newapp extends StatefulWidget {
  const Newapp({Key? key}) : super(key: key);

  @override
  State<Newapp> createState() => _NewappState();
}

class _NewappState extends State<Newapp> {
  static final List<Widget>_widgetoption =<widget>[
    const Text("Home"),
    const Text("Search"),
    const Text("city"),
    const Text("profile"),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My first App"),
      ),
      body: Center(
        child: Text(
          "My App"
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xFF526480),
        items: [
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
