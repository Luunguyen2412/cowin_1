import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cowin_1/common/config/texts_config.dart';

class ExerciseItem2 extends StatelessWidget {
  final image;
  final title;
  final subTitle;

  const ExerciseItem2(
      {Key? key,
      required this.image,
      required this.title,
      required this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.h,
      width: 248.w,
      margin: EdgeInsets.only(left: 20.w),
      decoration: BoxDecoration(
        color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
        borderRadius: BorderRadius.circular(15.h),
      ),
      child: Stack(
        children: [
          Container(
            height: 25.h,
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: 80.w,
                  decoration: BoxDecoration(
                      color: Color(0xFFFCFBFB),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(8.h),
                          bottomLeft: Radius.circular(8.h))),
                ),
              ],
            ),
          ),
          if (image != null)
            Container(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                image,
              ),
            ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40.h,
                ),
                Flexible(
                  child: Text(
                    title,
                    style: kText28Bold_2,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Flexible(
                    child: Text(
                  subTitle,
                  style: kText14Normal_2,
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
