// import 'package:bottom_nav_bar/persistent-tab-view.dart';

import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/common/config/texts_config.dart';
import 'package:cowin_1/common/constants/tools.dart';
import 'package:cowin_1/views/chat/chat_screen.dart';
import 'package:cowin_1/views/healthcare/healthcare_screen.dart';
import 'package:cowin_1/views/map/map_screen.dart';
import 'package:cowin_1/views/news/news_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_template/flutter_template.dart';

import '../views/home/home_screen.dart';

class NavigationScreen extends StatefulWidget {
  @override
  _navigationScreenState createState() => _navigationScreenState();
}

class _navigationScreenState extends State<NavigationScreen> {
  int currentTab = 0;
  List<Widget> _options = <Widget>[
    HomePage(),
    NewsScreen(),
    HealthCareScreen(),
    MapScreen(),
    ChatScreen()
  ];

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        textStyle: kText14Normal_4,
        icon: _controller.index == 0
            ? SvgPicture.asset(
                Tools().getIcon("home.svg"),
                color: cwColor5,
              )
            : SvgPicture.asset(
                Tools().getIcon("home.svg"),
                color: cwColor4,
              ),
        //icon: SvgPicture.asset(Tools().getIcon("home.svg"),width: 26,height: 26,fit: BoxFit.fill,),
        //icon: Container(height: 10,width: 26,color: Colors.black,),
        activeColorPrimary: cwColor5,
        title: ('Home'),
      ),
      PersistentBottomNavBarItem(
        textStyle: kText14Normal_4,
        icon: _controller.index == 1
            ? SvgPicture.asset(
                Tools().getIcon("news.svg"),
                color: cwColor5,
              )
            : SvgPicture.asset(
                Tools().getIcon("news.svg"),
                color: cwColor4,
              ),
        activeColorPrimary: cwColor5,
        title: ('News'),
      ),
      PersistentBottomNavBarItem(
        textStyle: kText14Normal_4,
        icon: SvgPicture.asset(
          Tools().getIcon("healthcare.svg"),
          color: cwColor2,
        ),
        activeColorPrimary: cwColor5,
        title: ('Healthcare'),
      ),
      PersistentBottomNavBarItem(
        textStyle: kText14Normal_4,
        icon: _controller.index == 3
            ? SvgPicture.asset(
                Tools().getIcon("map.svg"),
                color: cwColor5,
              )
            : SvgPicture.asset(
                Tools().getIcon("map.svg"),
                color: cwColor4,
              ),
        activeColorPrimary: cwColor5,
        title: ('Map'),
      ),
      PersistentBottomNavBarItem(
        textStyle: kText14Normal_4,
        icon: _controller.index == 4
            ? SvgPicture.asset(
                Tools().getIcon("chat.svg"),
                color: cwColor5,
              )
            : SvgPicture.asset(
                Tools().getIcon("chat.svg"),
                color: cwColor4,
              ),
        activeColorPrimary: cwColor5,
        title: ('Chat'),
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
        navBarHeight: 95.h,
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.white,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        hideNavigationBarWhenKeyboardShows: true,
        popAllScreensOnTapOfSelectedTab: true,
        navBarStyle: NavBarStyle.style19,
      ),
    );
  }
}
