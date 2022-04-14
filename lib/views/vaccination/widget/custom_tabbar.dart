import 'package:flutter/material.dart';

class CustomTabBar1 extends StatelessWidget {
  final List<Widget> listTab; //danh sách các tab cần hiển thị
  final TabController tabController; //truyền tabcontroller của tabbar đang xài
  const CustomTabBar1(
      {Key? key, required this.listTab, required this.tabController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        height: 55.0,
        child: TabBar(
          controller: tabController,
          labelColor: Colors.orange,
          unselectedLabelColor: Colors.grey[400],
          indicatorColor: Colors.orange,
          //   isScrollable: true,
          tabs: listTab,
          labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          unselectedLabelStyle:
              TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ));
  }
}