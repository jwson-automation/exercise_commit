import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  // 변수 인덱스 값을 선언, List 위젯을 호출 하는 용도로 사용한다.
  // List[_selectedIndex] 와 같이 사용

  static final List<Widget> _widgetOptions = <Widget>[
    const Text("Home"),
    const Text("Search"),
    const Text("Ticket"),
    const Text("Profile"),
  ];
  // 바텀 네비게이션 바의 상태(state)를 바꾸기 위해서 변수를 선언해준다.
  // 총 4개의 버튼을 생성했기 때문에, 변수 타입은 List<Widget>

  void _onItemTapped(int index){
    _selectedIndex = index;
    print('${_selectedIndex}');
  }
  // 플러터의 bottomNavBar 에서 버튼을 선택하면 자동으로 index를 제공한다.
  // 그 index값을 _selectedIndex 값으로 불러와서 사용이 가능해진다.


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My tickets"),
      ),
      body: Center(child: _widgetOptions[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 10,
          backgroundColor: Colors.black,
          unselectedItemColor: Color(0xFF526480),
          selectedItemColor: Colors.blueGrey,
          items: [
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                label: "1"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
                label: "2"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
                label: "3"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
                label: "4"),
          ]),
    );
  }
}
