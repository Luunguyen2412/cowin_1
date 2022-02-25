
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cowin_1/common/config/texts_config.dart';

class ExerciseItem extends StatelessWidget {
  final image;
  final title;
  final subTitle;
  final backgroundColor;

  const ExerciseItem(
      {Key? key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 164.h,
      width: 340.w,
      margin: EdgeInsets.only(left: 20.w),
      decoration: BoxDecoration(
        color: Color(backgroundColor),
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
            width: 185.w,
            padding: EdgeInsets.only(left: 16.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.h),
                  child: Text(
                    title,
                    style: kText28Bold_2,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10.w),
                  child: Expanded(
                    child: Text(
                      subTitle,
                      style: kText16Normal_2,
                    ),
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
