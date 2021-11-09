import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cowin_1/common/config/texts_config.dart';

class ExerciseItem extends StatelessWidget {
  final image;
  final title;
  final subTitle;

  const ExerciseItem(
      {Key? key,
      required this.image,
      required this.title,
      required this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 164.h,
      width: 340.w,
      margin: EdgeInsets.only(left: 20.w),
      decoration: BoxDecoration(
        color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
        borderRadius: BorderRadius.circular(20.h),
      ),
      child: Stack(
        children: [
          if (image != null)
            Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: Image.asset("$image"),
            ),
          Container(
            width: 190.w,
            padding: EdgeInsets.only(left: 16.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.h),
                  child: Text(
                    title,
                    style: kText18Bold_2,
                  ),
                ),
                Expanded(
                  child: Text(
                    subTitle,
                    style: kText14Normal_2,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
