import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/common/config/texts_config.dart';
import 'package:cowin_1/views/news/data_page.dart';
import 'package:cowin_1/views/news/news_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> with TickerProviderStateMixin {
  late TabController tabController;
  late TabController tabController1;
  late final ScrollController scrollController;

  bool isTapTabBar = false;

  bool isScroll = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    tabController = TabController(
      length: 2,
      vsync: this,
    );
    tabController.animateTo(0,
        duration: Duration(milliseconds: 500), curve: Curves.easeIn);
    tabController.addListener(() {
      setState(() {});
    });
    tabController1 = TabController(length: 4, vsync: this);
    tabController1.animateTo(0,
        duration: Duration(milliseconds: 1000), curve: Curves.easeIn);
    tabController1.addListener(() {
      // _setPositionByTabIndex();

      setState(() {});
    });
    scrollController = ScrollController(initialScrollOffset: 0);
    scrollController.addListener(() {
      _setTabIndexByPosition();
    });
  }

  _setPositionByTabIndex() {
    switch (tabController1.index) {
      case 0:
        scrollController
            .animateTo(0,
                duration: Duration(milliseconds: 600),
                curve: Curves.easeInOutCirc)
            .then((value) {
          setState(() {
            isTapTabBar = false;
          });
        });
        break;
      case 1:
        scrollController
            .animateTo(480,
                duration: Duration(milliseconds: 800),
                curve: Curves.easeInOutCirc)
            .then((value) {
          setState(() {
            isTapTabBar = false;
          });
        });
        break;
      case 2:
        scrollController
            .animateTo(1420,
                duration: Duration(milliseconds: 1000),
                curve: Curves.easeInOutCirc)
            .then((value) {
          setState(() {
            isTapTabBar = false;
          });
        });
        break;
      case 3:
        scrollController
            .animateTo(1670,
                duration: Duration(milliseconds: 1200),
                curve: Curves.easeInOutCirc)
            .then((value) {
          setState(() {
            isTapTabBar = false;
          });
        });
        break;
    }
  }

  _setTabIndexByPosition() {
    if (!isTapTabBar) {
      if (scrollController.offset < 350) {
        setState(() {
          tabController1.index = 0;
        });
      } else if (scrollController.offset >= 500 &&
          scrollController.offset < 650) {
        setState(() {
          tabController1.index = 1;
        });
      } else if (scrollController.offset >= 1420 &&
          scrollController.offset < 1500) {
        setState(() {
          tabController1.index = 2;
        });
      } else if (scrollController.offset >= 1670) {
        setState(() {
          tabController1.index = 3;
        });
      } else {}
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: primaryColor,
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  backgroundColor: primaryColor,
                  expandedHeight: 70.h,
                  pinned: false,
                  title: Container(
                    margin: EdgeInsets.only(left: 15.w, top: 20.h),
                    child: Text(
                      "News",
                      style: kText40Bold_3,
                    ),
                  ),
                ),
                SliverAppBar(
                  backgroundColor: cwColor2,
                  expandedHeight: 50.h,
                  pinned: true,
                  toolbarHeight: 10.h,
                  bottom: TabBar(
                    controller: tabController,
                    labelStyle: kText20Bold_1,
                    physics: NeverScrollableScrollPhysics(),
                    unselectedLabelStyle: kText20Bold_4,
                    tabs: [
                      Text(
                        "News",
                        style: tabController.index == 0
                            ? kText20Bold_1
                            : kText20Bold_4,
                      ),
                      Text(
                        "Data",
                        style: tabController.index == 1
                            ? kText20Bold_1
                            : kText20Bold_4,
                      )
                    ],
                  ),
                ),
                // SliverAppBar(
                //   expandedHeight: 200.h,
                //   pinned: false,
                //   floating: false,
                //   snap: false,
                //   flexibleSpace: FlexibleSpaceBar(
                //     centerTitle: true,
                //     title: Text("Collapsing Toolbar",
                //         style: TextStyle(
                //           color: Colors.white,
                //           fontSize: 16.0,
                //         )),
                //   ),
                // ),

                if (tabController.index == 0)
                  SliverAppBar(
                    pinned: true,
                    floating: false,
                    snap: false,
                    expandedHeight: 110.h,
                    toolbarHeight: 10.h,
                    backgroundColor: cwColor2,
                    bottom: PreferredSize(
                      preferredSize: Size.fromHeight(110.h),
                      child: Container(
                        height: 110.h,
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 10.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isTapTabBar = true;
                                  tabController1.index = 0;
                                });
                                _setPositionByTabIndex();
                              },
                              child: CustomTabBar(
                                title: "Official Update",
                                isActive: tabController1.index == 0,
                                icon: "assets/icons/ic_official_update.svg",
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isTapTabBar = true;
                                  tabController1.index = 1;
                                });
                                _setPositionByTabIndex();
                              },
                              child: CustomTabBar(
                                title: "Recommend",
                                isActive: tabController1.index == 1,
                                icon: "assets/icons/ic_recommend.svg",
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isTapTabBar = true;
                                  tabController1.index = 2;
                                });
                                _setPositionByTabIndex();
                              },
                              child: CustomTabBar(
                                title: "World",
                                isActive: tabController1.index == 2,
                                icon: "assets/icons/ic_world.svg",
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isTapTabBar = true;
                                  tabController1.index = 3;
                                });
                                _setPositionByTabIndex();
                              },
                              child: CustomTabBar(
                                title: "Vaccine",
                                isActive: tabController1.index == 3,
                                icon: "assets/icons/ic_vaccine.svg",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
              ];
            },
            body: TabBarView(
              controller: tabController,
              physics: NeverScrollableScrollPhysics(),
              children: [
                NewsPage(
                  tabIndex: tabController1.index,
                  scrollController: scrollController,
                  changeTab: (value) {
                    setState(() {
                      tabController1.index = value;
                    });
                  },
                ),
                DataPage()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
