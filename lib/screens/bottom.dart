import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My tickets"),
        ),
        body: Center(child: Text("My Body")),
        bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 10,
            backgroundColor: Colors.black,
            unselectedItemColor: Color(0xFF526480),
            selectedItemColor: Colors.blueGrey,
            items: [
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_add_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled)
            ,label: "1"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "2"),
        BottomNavigationBarItem(icon: Icon(Icons.phone), label: "3"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "4"),
      ]
        ),
    );
  }
}
