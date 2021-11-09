import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/common/config/texts_config.dart';
import 'package:cowin_1/common/constants/tools.dart';
import 'package:cowin_1/views/healthcare/mentally/mentally_page.dart';
import 'package:cowin_1/views/healthcare/mentally/widgets/pychology.dart';
import 'package:cowin_1/views/healthcare/nutrition/nutrition_page.dart';
import 'package:cowin_1/views/healthcare/physically/physically_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                backgroundColor: cwColor2,
                expandedHeight: 145.h,
                title: Container(
                  child: Text(
                    "Healthcare",
                    style: kText40Bold_3,
                  ),
                ),
                actions: [
                  Container(
                    height: 68.h,
                    margin: EdgeInsets.only(right: 7.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.center,
                          children: [
                            Container(
                              width: 46.h,
                              height: 46.h,
                              decoration: BoxDecoration(
                                  color: cwColor2,
                                  borderRadius: BorderRadius.circular(10.h),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xFF4F9FF1).withOpacity(0.2),
                                      offset: Offset(0, 2),
                                      blurRadius: 20.0,
                                    )
                                  ]),
                              child: Center(
                                child: Container(
                                    height: 27.h,
                                    width: 25.w,
                                    child: SvgPicture.asset(
                                        Tools().getIcon("notification.svg"))),
                              ),
                            ),
                            Container(
                              height: 53.h,
                              width: 53.h,
                              alignment: AlignmentDirectional.topEnd,
                              child: Container(
                                width: 13.h,
                                height: 13.h,
                                decoration: BoxDecoration(
                                    color: cwColor6, shape: BoxShape.circle),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Container(
                          height: 68.h,
                          width: 68.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.h),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFF4F9FF1).withOpacity(0.2),
                                  offset: Offset(0, 2),
                                  blurRadius: 20.0,
                                )
                              ]),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.h),
                            child: Container(
                                width: 46.h,
                                height: 46.h,
                                child:
                                    Image.asset(Tools().getIcon("info.png"))),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
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
