import 'package:cowin_1/common/config/colors_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const fontFamily = "Roboto";

/// cách đặt tên kText[$font_size][$style]_[$idColor]

var kTextConfig = TextStyle(
    fontSize: ScreenUtil().setSp(20.sp),
    fontWeight: FontWeight.normal,
    color: cwColor3,
    fontFamily: fontFamily);

var kText40Bold_3 = kTextConfig.copyWith(
  fontWeight: FontWeight.bold,
  fontSize: ScreenUtil().setSp(40.sp),
  color: cwColor3,
);
var kText35Bold_7 = kTextConfig.copyWith(
  fontWeight: FontWeight.bold,
  fontSize: ScreenUtil().setSp(35.sp),
  color: cwColor7,
);
var kText35Normal_7 = kText35Bold_7.copyWith(fontWeight: FontWeight.normal);

var kText40Bold_4 = kTextConfig.copyWith(
  fontWeight: FontWeight.bold,
  fontSize: ScreenUtil().setSp(40.sp),
  color: cwColor4,
);

var kText30Normal_1 = kTextConfig.copyWith(
  fontWeight: FontWeight.normal,
  fontSize: ScreenUtil().setSp(30.sp),
  color: cwColor1,
);
var kText30Bold_1 = kText30Normal_1.copyWith(
  fontWeight: FontWeight.bold,
);
var kText30Bold_3 = kText30Bold_1.copyWith(
  color: cwColor3,
);
var kText30Bold_4 = kText30Bold_1.copyWith(
  color: cwColor4,
);
var kText28Bold_2 = kTextConfig.copyWith(
  fontWeight: FontWeight.bold,
  fontSize: ScreenUtil().setSp(28.sp),
  color: cwColor2,
);
var kText24Bold_7 = kTextConfig.copyWith(
  fontWeight: FontWeight.bold,
  fontSize: ScreenUtil().setSp(24.sp),
  color: cwColor7,
);
var kText28Bold_3 = kTextConfig.copyWith(
  fontWeight: FontWeight.bold,
  fontSize: ScreenUtil().setSp(28.sp),
  color: cwColor3,
);

var kText21Bold_2 = kTextConfig.copyWith(
  fontWeight: FontWeight.bold,
  fontSize: ScreenUtil().setSp(21.sp),
  color: cwColor2,
);

var kText20Bold_1 = kTextConfig.copyWith(
  fontWeight: FontWeight.bold,
  fontSize: ScreenUtil().setSp(20.sp),
  color: cwColor1,
);
var kText20Bold_4 = kText20Bold_1.copyWith(color: cwColor4);
var kText20Bold_2 = kText20Bold_1.copyWith(color: cwColor2);
var kText20Bold_14 = kText20Bold_1.copyWith(color: cwColor14);
var kText20Bold_5 = kText20Bold_1.copyWith(color: cwColor3);
var kText20Normal_4 = kText20Bold_4.copyWith(fontWeight: FontWeight.normal);
var kText20Normal_1 = kText20Bold_1.copyWith(fontWeight: FontWeight.normal);

var kText22Bold_1 = kTextConfig.copyWith(
  fontWeight: FontWeight.bold,
  fontSize: ScreenUtil().setSp(22.sp),
  color: cwColor1,
);
var kText22Bold_4 = kText22Bold_1.copyWith(color: cwColor4);
var kText22Bold_5 = kText22Bold_1.copyWith(color: cwColor3);

var kText26Bold_4 = kText22Bold_1.copyWith(
  color: cwColor4,
  fontSize: ScreenUtil().setSp(26.sp),
);

var kText18Bold_11 = kTextConfig.copyWith(
  fontWeight: FontWeight.bold,
  fontSize: ScreenUtil().setSp(18.sp),
  color: cwColor11,
);
var kText18Bold_2 = kText18Bold_11.copyWith(color: cwColor2);
var kText18Bold_3 = kText18Bold_11.copyWith(color: cwColor3);
var kText18Normal_4 = kText18Bold_11.copyWith(
  color: cwColor4,
  fontWeight: FontWeight.normal,
);
var kText18Bold_14 = kText18Bold_11.copyWith(color: cwColor14);
var kText17Normal_4 = kTextConfig.copyWith(
  fontWeight: FontWeight.normal,
  fontSize: ScreenUtil().setSp(17.sp),
  color: cwColor4,
);

var kText16Normal_3 = kTextConfig.copyWith(
  fontSize: ScreenUtil().setSp(16.sp),
  color: cwColor3,
);
var kText16Bold_3 = kTextConfig.copyWith(
  fontSize: ScreenUtil().setSp(16.sp),
  color: cwColor3,
  fontWeight: FontWeight.bold,
);

var kText16Normal_2 = kText16Normal_3.copyWith(
  color: cwColor2,
);
var kText16Normal_18 = kText16Normal_3.copyWith(
  color: cwColor18,
);
var kText16Normal_4 = kText16Normal_3.copyWith(
  color: cwColor4,
);
var kText15Normal_7 = kTextConfig.copyWith(
  fontWeight: FontWeight.normal,
  fontSize: ScreenUtil().setSp(15.sp),
  color: cwColor7,
);

var kText14Normal_4 = kTextConfig.copyWith(
  fontWeight: FontWeight.normal,
  fontSize: ScreenUtil().setSp(14.sp),
  color: cwColor4,
);
var kText14Normal_5 = kText14Normal_4.copyWith(color: cwColor5);
var kText14Normal_2 = kText14Normal_4.copyWith(color: cwColor2);
var kText14Normal_3 = kText14Normal_4.copyWith(color: cwColor3);

var kText12Normal_18 = kText16Normal_18.copyWith(
  fontSize: ScreenUtil().setSp(12.sp),
);
var kText12Normal_13 = kText12Normal_18.copyWith(
  color: cwColor13,
);
var kText14Medium_1 = kTextConfig.copyWith(
  fontWeight: FontWeight.w600,
  fontSize: ScreenUtil().setSp(14.sp),
  color: cwColor1,
);
