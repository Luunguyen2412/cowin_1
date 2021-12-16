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
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: colorBox,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: normalText.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: ScreenUtil().setSp(20),
                  color: Colors.white,
                ),
              ),
              Text(
                cases,
                style: kTextConfig.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: ScreenUtil().setSp(30),
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
