import 'package:cowin_1/common/config/texts_config.dart';
import 'package:cowin_1/views/healthcare/mentally/mentally_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spannable_grid/spannable_grid.dart';

class Meditation extends StatefulWidget {
  const Meditation({Key? key}) : super(key: key);

  @override
  State<Meditation> createState() => _MeditationState();
}

class _MeditationState extends State<Meditation> {
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
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MentallyDetail(9)));
      },
      child: Hero(
        tag: "mentally_detail9",
        child: Container(
          height: 205.h,
          width: 163.w,
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10.h)),
          child: Stack(
            alignment: AlignmentDirectional.bottomStart,
            children: [
              Container(
                alignment: Alignment.center,
                child: Image.asset("assets/images/pyc_image8.png"),
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
      ),
    );
  }

  _cardAnxietRelease() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MentallyDetail(10)));
      },
      child: Hero(
        tag: "mentally_detail10",
        child: Container(
          height: 163.h,
          width: 163.w,
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10.h)),
          child: Stack(
            alignment: AlignmentDirectional.bottomStart,
            children: [
              Container(
                alignment: Alignment.center,
                child: Image.asset("assets/images/pyc_image9.png"),
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
      ),
    );
  }

  _cardHowToMeditate() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MentallyDetail(11)));
      },
      child: Hero(
        tag: "mentally_detail11",
        child: Container(
          height: 205.h,
          width: 163.w,
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10.h)),
          child: Stack(
            alignment: AlignmentDirectional.bottomStart,
            children: [
              Container(
                alignment: Alignment.center,
                child: Image.asset("assets/images/pyc_image10.png"),
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
      ),
    );
  }

  _cardHowToBuildResilience() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MentallyDetail(12)));
      },
      child: Hero(
        tag: "mentally_detail12",
        child: Container(
          height: 163.h,
          width: 163.w,
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10.h)),
          child: Stack(
            alignment: AlignmentDirectional.bottomStart,
            children: [
              Container(
                alignment: AlignmentDirectional.center,
                child: Image.asset("assets/images/pyc_image11.png"),
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
