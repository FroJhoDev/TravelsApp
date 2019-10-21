import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:travels_app/homeScreen.dart';

class HomeTabs extends StatefulWidget {
  @override
  _HomeTabsState createState() => _HomeTabsState();
}

class _HomeTabsState extends State<HomeTabs> {

  int _index = 1;

  var pages = [];

  @override
  void initState() {    
    super.initState();
    pages = [
      HomeScreen(),
      HomeScreen(),
      HomeScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(64, 52, 87, 1),
        currentIndex: _index,
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            activeIcon: Icon(MdiIcons.home, color:Theme.of(context).accentColor, size: 30.0,),
            icon: Icon(MdiIcons.home, color: Colors.white.withOpacity(0.2), size: 32.0),
            title: Container(
              height: 0,
              child: Text(''),
            )
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(MdiIcons.bookmark, color:Theme.of(context).accentColor, size: 30.0,),
            icon: Icon(MdiIcons.bookmark, color: Colors.white.withOpacity(0.2), size: 32.0),
            title: Container(
              height: 0,
              child: Text(''),
            )
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(MdiIcons.account, color:Theme.of(context).accentColor, size: 30.0,),
            icon: Icon(MdiIcons.account, color: Colors.white.withOpacity(0.2), size: 32.0),
            title: Container(
              height: 0,
              child: Text(''),
            )
          ),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _index = index;
    });
  }


}
