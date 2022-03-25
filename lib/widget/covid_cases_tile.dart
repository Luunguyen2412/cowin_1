import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/common/config/texts_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import '../themes.dart';

class CasesItem extends StatelessWidget {
  late final String title;
  late final int cases;
  late final Color colorBox;
  late final int plusvalue;
  CasesItem(
    this.title,
    this.cases,
    this.colorBox,
    this.plusvalue,
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
                  fontWeight: FontWeight.w600,
                  fontSize: ScreenUtil().setSp(18),
                  color: Colors.white,
                ),
              ),
              Text(
                NumberFormat.decimalPattern().format(cases),
                style: kTextConfig.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: ScreenUtil().setSp(20),
                  color: cwColor2,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  plusvalue != null
                      ? const Icon(Icons.arrow_upward,
                          size: 14.0, color: Colors.white)
                      : const SizedBox(),
                  Text(
                    plusvalue == null
                        ? ""
                        : NumberFormat.decimalPattern().format(plusvalue),
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: Colors.white),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
