import 'package:bottom_nav_bar/persistent-tab-view.dart';
import 'package:cowin_1/screen/home/home_screen.dart';
import 'package:cowin_1/screen/news/new_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../themes.dart';

class NavigationScreen extends StatefulWidget {
  @override
  _navigationScreenState createState() => _navigationScreenState();
}

class _navigationScreenState extends State<NavigationScreen> {
  int currentTab = 0;
  List<Widget> _options = <Widget>[
    HomePage(),
    NewTab(),
    Text('maps'),
    Text('doctors'),
  ];

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        inactiveColorPrimary: Colors.grey,
        iconSize: 26,
        textStyle: normalText.copyWith(fontSize: 10),
        icon: Icon(Icons.home),
        activeColorPrimary: kBlueColor,
        title: ('Home'),
      ),
      PersistentBottomNavBarItem(
        inactiveColorPrimary: Colors.grey,
        iconSize: 26,
        textStyle: normalText.copyWith(fontSize: 10),
        icon: Icon(Icons.book),
        activeColorPrimary: kBlueColor,
        title: ('News'),
      ),
      PersistentBottomNavBarItem(
        inactiveColorPrimary: Colors.grey,
        iconSize: 26,
        textStyle: normalText.copyWith(fontSize: 10),
        icon: Icon(Icons.map),
        activeColorPrimary: kBlueColor,
        title: ('Map'),
      ),
      PersistentBottomNavBarItem(
        inactiveColorPrimary: Colors.grey,
        iconSize: 26,
        textStyle: normalText.copyWith(fontSize: 10),
        icon: Icon(Icons.local_hospital),
        activeColorPrimary: kBlueColor,
        title: ('Doctors'),
      ),
    ];
  }

  PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PersistentTabView(
        this.context,
        controller: _controller,
        screens: _options,
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.white,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        hideNavigationBarWhenKeyboardShows: true,
        popAllScreensOnTapOfSelectedTab: true,
        navBarStyle: NavBarStyle.style6,
      ),
    );
  }
}
