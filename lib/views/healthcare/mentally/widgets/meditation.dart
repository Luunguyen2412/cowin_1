
import 'package:cowin_1/common/config/texts_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spannable_grid/spannable_grid.dart';
class Meditation extends StatelessWidget {
  const Meditation({Key? key}) : super(key: key);

  List<SpannableGridCellData> _getCells() {
    var result = <SpannableGridCellData>[];
    result.add(SpannableGridCellData(
      column: 1,
      row: 1,
      columnSpan: 1,
      rowSpan: 4,
      id: 0,
      child: _card7DaysOfCalm(),
    ));
    result.add(SpannableGridCellData(
      column: 2,
      row: 1,
      columnSpan: 1,
      rowSpan: 3,
      id: 1,
      child: _cardAnxietRelease(),
    ));
    result.add(SpannableGridCellData(
      column: 1,
      row: 5,
      columnSpan: 1,
      rowSpan: 3,
      id: 2,
      child: _cardHowToMeditate(),
    ));
    result.add(SpannableGridCellData(
      column: 2,
      row: 4,
      columnSpan: 1,
      rowSpan: 4,
      id: 3,
      child: _cardHowToBuildResilience(),
    ));
    return result;
  }

  _card7DaysOfCalm() {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 205.h,
        width: 163.w,
        decoration: BoxDecoration(
            color: Colors.transparent, borderRadius: BorderRadius.circular(10.h)),
        child: Stack(
          alignment: AlignmentDirectional.bottomStart,
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset("assets/images/img_meditation1.png"),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20.h, left: 16.w),
              child: Text(
                "7 Days of Calm",
                style: kText18Bold_2,
              ),
            )
          ],
        ),
      ),
    );
  }

  _cardAnxietRelease() {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 163.h,
        width: 163.w,
        decoration: BoxDecoration(
            color: Colors.transparent, borderRadius: BorderRadius.circular(10.h)),
        child: Stack(
          alignment: AlignmentDirectional.bottomStart,
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset("assets/images/img_meditation2.png"),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20.h, left: 16.w),
              child: Text(
                "Anxiet Release",
                style: kText18Bold_2,
              ),
            )
          ],
        ),
      ),
    );
  }

  _cardHowToMeditate() {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 205.h,
        width: 163.w,
        decoration: BoxDecoration(
            color: Colors.transparent, borderRadius: BorderRadius.circular(10.h)),
        child: Stack(
          alignment: AlignmentDirectional.bottomStart,
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset("assets/images/img_meditation3.png"),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20.h, left: 16.w),
              child: Text(
                "How to Meditate",
                style: kText18Bold_2,
              ),
            )
          ],
        ),
      ),
    );
  }

  _cardHowToBuildResilience() {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 163.h,
        width: 163.w,
        decoration: BoxDecoration(
            color: Colors.transparent, borderRadius: BorderRadius.circular(10.h)),
        child: Stack(
          alignment: AlignmentDirectional.bottomStart,
          children: [
            Container(
              alignment: AlignmentDirectional.center,
              child: Image.asset("assets/images/img_meditation4.png"),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20.h, left: 16.w),
              child: Text(
                "How to build Resilience ",
                style: kText18Bold_2,
              ),
            )
          ],
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
                  "Meditation for F0, F1",
                  style: kText35Bold_7,
                ),
                Text(
                  "We can learn how to improve psychology.",
                  style: kText17Normal_4,
                ),
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: SpannableGrid(
              columns: 2,
              rows: 7,
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
