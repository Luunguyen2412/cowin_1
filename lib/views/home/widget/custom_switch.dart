import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/common/config/texts_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../themes.dart';

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({Key? key}) : super(key: key);

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch>
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
      height: 53.h,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 30.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: kWhiteColor,
        border: Border.all(
          color: cwColor3,
        ),
      ),
      child: Stack(
        children: [
          AnimatedPositioned(
              left: tabController.index == 0 ? 1.w : 138.w,
              child: Container(
                width: 180.w,
                height: 48.h,
                margin: EdgeInsets.only(top: 1.h),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: tabController.index == 0
                        ? Color(0xFFFCA6A6)
                        : Color(0xFF2198E7),
                    borderRadius: BorderRadius.circular(30.h)),
              ),
              duration: Duration(milliseconds: 500)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40.w),
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
                      style: kText16Normal_3,
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
                        style: kText16Normal_3,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
