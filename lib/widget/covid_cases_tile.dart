import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/common/config/texts_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../themes.dart';


class CasesItem extends StatelessWidget {
  late final String title;
  late final String cases;
  late final Color colorBox;
  CasesItem(
    this.title,
    this.cases,
    this.colorBox,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      height: 138.h,
      width: 177.w,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: colorBox,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: normalText.copyWith(
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Text(
                cases,
                style: kTextConfig.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: ScreenUtil().setSp(22),
                  color: cwColor2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
