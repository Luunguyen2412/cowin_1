import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/common/config/texts_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:flutter_modules/flutter_modules.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spannable_grid/spannable_grid.dart';

import '../mentally_detail.dart';

class Pychology extends StatefulWidget {
  const Pychology({Key? key}) : super(key: key);

  @override
  State<Pychology> createState() => _PychologyState();
}

class _PychologyState extends State<Pychology> {
  pushScreen(id) async {
    await showAnimatedDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) => Dialog(
        insetPadding: EdgeInsets.zero,
        backgroundColor: Colors.black.withOpacity(0),
        child: MentallyDetail(id),
      ),
      animationType: DialogTransitionType.slideFromBottom,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

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
      onTap: () {
        pushScreen(1);
      },
      child: Hero(
        tag: "mentally_detail1",
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
                padding: EdgeInsets.only(bottom: 15.h, left: 15.w),
                child: Text(
                  "Reduce Stress",
                  style: kText20Bold_2,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _cardImprovePerformanee() {
    return InkWell(
      onTap: () {
        pushScreen(2);
      },
      child: Hero(
        tag: "mentally_detail2",
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
                padding: EdgeInsets.only(bottom: 15.h, left: 15.w),
                child: Text(
                  "Improve Performanee",
                  style: kText20Bold_2,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _cardReduceAnxiety() {
    return InkWell(
      onTap: () {
        pushScreen(3);
      },
      child: Hero(
        tag: "mentally_detail3",
        child: Container(
          height: 205.h,
          width: 163.w,
          decoration: BoxDecoration(
              color: cwColor12, borderRadius: BorderRadius.circular(10.h)),
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
                padding: EdgeInsets.only(bottom: 15.h, left: 15.w),
                child: Text(
                  "Reduce Anxiety",
                  style: kText20Bold_14,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _cardIncreaseHappiness() {
    return InkWell(
      onTap: () {
        pushScreen(4);
      },
      child: Hero(
        tag: "mentally_detail4",
        child: Container(
          height: 163.h,
          width: 163.w,
          decoration: BoxDecoration(
              color: cwColor11, borderRadius: BorderRadius.circular(10.h)),
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
                padding: EdgeInsets.only(bottom: 15.h, left: 15.w),
                child: Text(
                  "Increase \nHappiness",
                  style: kText20Bold_14,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _cardPersonalGrowth1() {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => MentallyDetail(5)));
      },
      child: Hero(
        tag: "mentally_detail5",
        child: Container(
          height: 190.h,
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
                padding: EdgeInsets.only(bottom: 15.h, left: 16.w),
                child: Text(
                  "Personal Growth",
                  style: kText20Bold_2,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _cardBetterSleep() {
    return InkWell(
      onTap: () {
        pushScreen(5);
      },
      child: Hero(
        tag: "mentally_detail6",
        child: Container(
          height: 163.h,
          width: 163.w,
          decoration: BoxDecoration(
              color: cwcolor20, borderRadius: BorderRadius.circular(10.h)),
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
                padding: EdgeInsets.only(bottom: 15.h, left: 15.w),
                child: Text(
                  "Better Sleep",
                  style: kText20Bold_2,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _cardPersonalGrowth2() {
    return InkWell(
      onTap: () {
        pushScreen(7);
      },
      child: Hero(
        tag: "mentally_detail7",
        child: Container(
          height: 195.h,
          width: 163.w,
          decoration: BoxDecoration(
              color: cwColor16, borderRadius: BorderRadius.circular(10.h)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 20.h),
                  child: Image.asset("assets/images/pyc_image7.png"),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15.h, left: 15.w),
                child: Text(
                  "Personal Growth",
                  style: kText20Bold_2,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _cardReduceAnrexia() {
    return InkWell(
      onTap: () {
        pushScreen(8);
      },
      child: Hero(
        tag: "mentally_detail8",
        child: Container(
          height: 163.h,
          width: 163.w,
          decoration: BoxDecoration(
              color: cwColor15, borderRadius: BorderRadius.circular(10.h)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 20.h),
                  child: Image.asset("assets/images/pyc_image6.png"),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15.h, left: 15.w),
                child: Text(
                  "Reduce Anorexia",
                  style: kText20Bold_2,
                ),
              )
            ],
          ),
        ),
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
                SizedBox(
                  height: 3.h,
                ),
                Text(
                  "Counseling to solve psychological problems.",
                  style: kText17Normal_4,
                ),
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            child: SpannableGrid(
              columns: 2,
              rows: 14,
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
