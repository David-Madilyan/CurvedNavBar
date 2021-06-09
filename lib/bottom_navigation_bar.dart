
import 'package:bottom_nav_bar/curved_nav_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget{
  int selectedIndex = 0;
  List<Widget> _screens = <Widget>[
    Center(child: Container( child: Text("page 1"),)),
    Center(child: Container( child: Text("page 2"),)),
    Center(child: Container( child: Text("page 3"),)),
    Center(child: Container( child: Text("page 4"),))
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _screens.elementAt(selectedIndex),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        key: GlobalKey(),
        height: 60,
        index: selectedIndex,
        animationCurve: Curves.easeIn,
        color: Colors.grey,
        buttonBackgroundColor: Colors.blue,                           // selected Item Color
        backgroundColor: Colors.transparent,
        animationDuration: Duration(milliseconds: 200),
        onTap: onTapItem,
        letIndexChange: (index) => true,
        items: <Widget>[
          _bottomNavigationBarItem(
            selected: selectedIndex == 0 ? true: false,
            icon: CupertinoIcons.home,
            label: 'Home',
          ),
          _bottomNavigationBarItem(
            selected: selectedIndex == 1 ? true: false,
            icon: CupertinoIcons.list_bullet,
            label: 'Orders',
          ),
          _bottomNavigationBarItem(
            selected: selectedIndex == 2 ? true: false,
            icon: CupertinoIcons.location,
            label: 'Map',
          ),
          _bottomNavigationBarItem(
            selected: selectedIndex == 3 ? true: false,
            icon: CupertinoIcons.person,
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  //you can use customize container without BottomNavigationBarItem
  Widget _bottomNavigationBarItem({IconData icon, String label, bool selected}) {
    return Center(
      child: Container(
        width: 60,
        height: 60,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
                padding: EdgeInsets.only(top: 20),
                child: Icon(icon, size: 24, color: selected ? Colors.white : Color(0xFFEA7C69))
            ),
          ],
        ),
      ),
    );
  }
}

void onTapItem(int index) {

}