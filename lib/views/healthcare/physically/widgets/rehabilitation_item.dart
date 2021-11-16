import 'package:cowin_1/views/healthcare/physically/physically_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cowin_1/common/config/texts_config.dart';

class Rehabilitation extends StatelessWidget {
  final name;
  final image;
  final backgroundColor;
  final titleColor;

  const Rehabilitation(
      {Key? key,
      required this.name,
      required this.image,
      required this.backgroundColor,
      required this.titleColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.h,
      width: 175.w,
      decoration: BoxDecoration(
          color: Color(backgroundColor), borderRadius: BorderRadius.circular(15.h)),
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(child: Image.asset(image)),
          SizedBox(height: 15.h,),
          Flexible(
              child: Text(
            name,
            style: kText18Bold_2.copyWith(color: Color(titleColor)),
          ))
        ],
      ),
    );
  }
}
