import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/common/config/texts_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../themes.dart';
import '../home_screen.dart';

class CustomSwitchTabbar extends StatefulWidget {
  const CustomSwitchTabbar({Key? key}) : super(key: key);

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitchTabbar>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: 2,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 370.h,
      child: Column(
        children: [
          Container(
            height: 53.h,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 10.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color(0xFFACD8FF),
            ),
            child: Stack(
              children: [
                AnimatedPositioned(
                    left: tabController.index == 0 ? 1.w : 167.w,
                    child: Container(
                     
                      width: 190.w,
                      height: 49.h,
                      margin: EdgeInsets.only(top: 2.h, left: 2.w),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: tabController.index == 0
                              ? Color(0xFFFFFFFF)
                              : Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(30.h)),
                    ),
                    duration: Duration(milliseconds: 500)),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 40.w, vertical: 1.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            tabController.index = 0;
                          });
                        },
                        child: Container(
                          height: 53.h,
                          alignment: Alignment.center,
                          child: Text(
                            "Vietnam",
                            style: kTextConfig.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: ScreenUtil().setSp(23),
                              color: cwColor3,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              tabController.index = 1;
                            });
                          },
                          child: Container(
                            height: 53.h,
                            alignment: Alignment.center,
                            child: Text(
                              "Global",
                              style: kTextConfig.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: ScreenUtil().setSp(23),
                                color: cwColor3,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Expanded(
              child: TabBarView(controller: tabController, children: [
            VietnamPage(),
            GlobalPage(),
          ]))
        ],
      ),
    );
  }
}

class VietnamPage extends StatefulWidget {
  const VietnamPage({Key? key}) : super(key: key);
  @override
  VietnamPageState createState() => VietnamPageState();
}

class VietnamPageState extends State<VietnamPage>
    with TickerProviderStateMixin {
  late TabController tabController_1;
  int selectedIndex = 0;

  void initState() {
    // TODO: implement initState
    super.initState();
    tabController_1 = TabController(
      length: 3,
      vsync: this,
    );
    tabController_1.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260.h,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TabBar(
                isScrollable: true,
                controller: tabController_1,
                indicator: BoxDecoration(borderRadius: BorderRadius.zero),
                labelColor: Colors.black,
                unselectedLabelColor: Colors.black26,
                tabs: [
                  Text(
                    "Total",
                    style: tabController_1.index == 0
                        ? kText20Bold_5
                        : kText20Bold_4,
                  ),
                  Text(
                    "Today",
                    style: tabController_1.index == 1
                        ? kText20Bold_5
                        : kText20Bold_4,
                  ),
                  Text(
                    "Yesterday",
                    style: tabController_1.index == 2
                        ? kText20Bold_5
                        : kText20Bold_4,
                  )
                ],
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: tabController_1,
              children: [
                TotalPage(),
                TodayPage(),
                YesterdayPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class GlobalPage extends StatefulWidget {
  const GlobalPage({Key? key}) : super(key: key);
  @override
  GlobalPageState createState() => GlobalPageState();
}

class GlobalPageState extends State<GlobalPage> with TickerProviderStateMixin {
  late TabController tabController_1;
  int selectedIndex = 0;

  void initState() {
    // TODO: implement initState
    super.initState();
    tabController_1 = TabController(
      length: 3,
      vsync: this,
    );
    tabController_1.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260.h,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TabBar(
                isScrollable: true,
                controller: tabController_1,
                indicator: BoxDecoration(borderRadius: BorderRadius.zero),
                labelColor: Colors.black,
                unselectedLabelColor: Colors.black26,
                tabs: [
                  Text(
                    "Total",
                    style: tabController_1.index == 0
                        ? kText20Bold_5
                        : kText20Bold_4,
                  ),
                  Text(
                    "Today",
                    style: tabController_1.index == 1
                        ? kText20Bold_5
                        : kText20Bold_4,
                  ),
                  Text(
                    "Yesterday",
                    style: tabController_1.index == 2
                        ? kText20Bold_5
                        : kText20Bold_4,
                  )
                ],
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: tabController_1,
              children: [
                TotalPageGlobal(),
                TodayPageGlobal(),
                YesterdayPageGlobal(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
