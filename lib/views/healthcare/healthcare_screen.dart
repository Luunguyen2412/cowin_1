import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/common/config/texts_config.dart';
import 'package:cowin_1/views/healthcare/mentally/mentally_page.dart';
import 'package:cowin_1/views/healthcare/nutrition/nutrition_page.dart';
import 'package:cowin_1/views/healthcare/physically/physically_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HealthCareScreen extends StatefulWidget {
  const HealthCareScreen({Key? key}) : super(key: key);

  @override
  _HealthCareScreenState createState() => _HealthCareScreenState();
}

class _HealthCareScreenState extends State<HealthCareScreen>
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  late TabController _tabController;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.animateTo(0,
        duration: Duration(milliseconds: 500), curve: Curves.bounceIn);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  // ignore: must_call_super
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                backgroundColor: primaryColor,
                expandedHeight: 145.h,
                title: Container(
                  padding: EdgeInsets.only(top: 20.h, left: 10.w),
                  child: Text("Healthcare",
                      style: kTextConfig.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: ScreenUtil().setSp(28.sp),
                        color: cwColor2,
                      )),
                ),
                bottom: TabBar(               
                  controller: _tabController,
                  labelStyle: kText20Bold_1,
                  unselectedLabelStyle: kText20Bold_4,
                  tabs: [
                    Text(
                      "Mentally",
                      style: _tabController.index == 0
                          ? kText20Bold_1
                          : kText20Bold_4,
                    ),
                    Text(
                      "Physically",
                      style: _tabController.index == 1
                          ? kText20Bold_1
                          : kText20Bold_4,
                    ),
                    Text(
                      "Nutrition",
                      style: _tabController.index == 2
                          ? kText20Bold_1
                          : kText20Bold_4,
                    )
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            controller: _tabController,
            children: [MentallyPage(), PhysicallyPage(), NutritionPage()],
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
