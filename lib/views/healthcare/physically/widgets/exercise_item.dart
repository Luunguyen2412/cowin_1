import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/common/config/texts_config.dart';
class ExerciseItem extends StatelessWidget {
  const ExerciseItem({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:164.h,
      width:340.w,
      decoration: BoxDecoration(
        color: Color(0xFF046582).withOpacity(0.75),
        borderRadius: BorderRadius.circular(20.h),
      ),
      child: Stack(
        children: [
          
        ],
      ),
    );
  }
}