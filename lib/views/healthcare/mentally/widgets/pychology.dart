import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/common/config/texts_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spannable_grid/spannable_grid.dart';
class Pychology extends StatelessWidget {
  const Pychology({Key? key}) : super(key: key);
  List<SpannableGridCellData> _getCells() {
    var result = <SpannableGridCellData>[];
    result.add(SpannableGridCellData(
      column: 1,
      row: 1,
      columnSpan: 1,
      rowSpan: 4,
      id: 0,
      child: _cardReduceStress(),
    ));
    result.add(SpannableGridCellData(
      column: 2,
      row: 1,
      columnSpan: 1,
      rowSpan: 3,
      id: 1,
      child: _cardImprovePerformanee(),
    ));
    result.add(SpannableGridCellData(
      column: 1,
      row: 5,
      columnSpan: 1,
      rowSpan: 3,
      id: 2,
      child: _cardIncreaseHappiness(),
    ));
    result.add(SpannableGridCellData(
      column: 2,
      row: 4,
      columnSpan: 1,
      rowSpan: 4,
      id: 3,
      child: _cardReduceAnxiety(),
    ));
    result.add(SpannableGridCellData(
      column: 1,
      row: 8,
      columnSpan: 1,
      rowSpan: 4,
      id: 4,
      child: _cardPersonalGrowth1(),
    ));
    result.add(SpannableGridCellData(
      column: 2,
      row: 8,
      columnSpan: 1,
      rowSpan: 3,
      id: 5,
      child: _cardBetterSleep(),
    ));
    result.add(SpannableGridCellData(
      column: 1,
      row: 12,
      columnSpan: 1,
      rowSpan: 3,
      id: 6,
      child: _cardReduceAnrexia(),
    ));
    result.add(SpannableGridCellData(
      column: 2,
      row: 11,
      columnSpan: 1,
      rowSpan: 4,
      id: 7,
      child: _cardPersonalGrowth2(),
    ));
    return result;
  }

  _cardReduceStress() {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 205.h,
        width: 163.w,
        decoration: BoxDecoration(
            color: cwColor9, borderRadius: BorderRadius.circular(10.h)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 20.h),
                child: Image.asset("assets/images/pyc_image0.png"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h, left: 16.w),
              child: Text(
                "Reduce Stress",
                style: kText18Bold_11,
              ),
            )
          ],
        ),
      ),
    );
  }

  _cardImprovePerformanee() {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 163.h,
        width: 163.w,
        decoration: BoxDecoration(
            color: cwColor10, borderRadius: BorderRadius.circular(10.h)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 10.h),
                child: Image.asset("assets/images/pyc_image1.png"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h, left: 16.w),
              child: Text(
                "Improve Performanee",
                style: kText18Bold_2,
              ),
            )
          ],
        ),
      ),
    );
  }

  _cardReduceAnxiety() {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 205.h,
        width: 163.w,
        decoration: BoxDecoration(
            color: cwColor11, borderRadius: BorderRadius.circular(10.h)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 20.h),
                child: Image.asset("assets/images/pyc_image3.png"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.h, left: 16.w),
              child: Text(
                "Reduce Anxiety",
                style: kText18Bold_14,
              ),
            )
          ],
        ),
      ),
    );
  }

  _cardIncreaseHappiness() {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 163.h,
        width: 163.w,
        decoration: BoxDecoration(
            color: cwColor12, borderRadius: BorderRadius.circular(10.h)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 10.h),
                child: Image.asset("assets/images/pyc_image2.png"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h, left: 16.w),
              child: Text(
                "Increase \nHappiness",
                style: kText18Bold_14,
              ),
            )
          ],
        ),
      ),
    );
  }

  _cardPersonalGrowth1() {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 205.h,
        width: 163.w,
        decoration: BoxDecoration(
            color: cwColor13, borderRadius: BorderRadius.circular(10.h)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 20.h),
                child: Image.asset("assets/images/pyc_image4.png"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.h, left: 16.w),
              child: Text(
                "Personal \nGrowth",
                style: kText18Bold_2,
              ),
            )
          ],
        ),
      ),
    );
  }

  _cardBetterSleep() {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 163.h,
        width: 163.w,
        decoration: BoxDecoration(
            color: cwColor14, borderRadius: BorderRadius.circular(10.h)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 20.h),
                child: Image.asset("assets/images/pyc_image5.png"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h, left: 16.w),
              child: Text(
                "Better Sleep",
                style: kText18Bold_2,
              ),
            )
          ],
        ),
      ),
    );
  }

  _cardPersonalGrowth2() {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 205.h,
        width: 163.w,
        decoration: BoxDecoration(
            color: cwColor16, borderRadius: BorderRadius.circular(10.h)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 30.h),
                child: Image.asset("assets/images/pyc_image7.png"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40.h, left: 16.w),
              child: Text(
                "Personal Growth",
                style: kText18Bold_2,
              ),
            )
          ],
        ),
      ),
    );
  }

  _cardReduceAnrexia() {
    return Container(
      height: 163.h,
      width: 163.w,
      decoration: BoxDecoration(
          color: cwColor15, borderRadius: BorderRadius.circular(10.h)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 5.h),
            child: Image.asset("assets/images/pyc_image6.png"),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.h, left: 16.w),
            child: Text(
              "Reduce Anorexia",
              style: kText18Bold_2,
            ),
          )
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.topStart,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ///title 1
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pychology",
                  style: kText35Bold_7,
                ),
                Text(
                  "Counseling to solve psychological problems.",
                  style: kText17Normal_4,
                ),
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: SpannableGrid(
              columns: 2,
              rows: 15,
              rowHeight: 60.w,
              spacing: 10.w,
              cells: _getCells(),
            ),
          ),
        ],
      ),
    );
  }
}
