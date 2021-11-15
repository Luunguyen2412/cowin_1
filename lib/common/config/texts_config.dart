import 'package:cowin_1/common/config/colors_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const fontFamily = "Roboto";

/// cách đặt tên kText[$font_size][$style]_[$idColor]

var kTextConfig = TextStyle(
    fontSize: ScreenUtil().setSp(20),
    fontWeight: FontWeight.normal,
    color: cwColor3,
    fontFamily: fontFamily);

var kText40Bold_3 = kTextConfig.copyWith(
  fontWeight: FontWeight.bold,
  fontSize: ScreenUtil().setSp(40),
  color: cwColor3,
);
var kText35Bold_7 = kTextConfig.copyWith(
  fontWeight: FontWeight.bold,
  fontSize: ScreenUtil().setSp(35),
  color: cwColor7,
);
var kText35Normal_7 = kText35Bold_7.copyWith(
  fontWeight: FontWeight.normal
);



var kText40Bold_4 = kTextConfig.copyWith(
  fontWeight: FontWeight.bold,
  fontSize: ScreenUtil().setSp(40),
  color: cwColor2,
);

var kText30Normal_1 = kTextConfig.copyWith(
  fontWeight: FontWeight.normal,
  fontSize: ScreenUtil().setSp(30),
  color: cwColor1,
);
var kText30Bold_1 = kText30Normal_1.copyWith(
  fontWeight: FontWeight.bold,
);

var kText28Bold_2 = kTextConfig.copyWith(
  fontWeight: FontWeight.bold,
  fontSize: ScreenUtil().setSp(28),
  color: cwColor2,
);

var kText28Bold_3 = kTextConfig.copyWith(
  fontWeight: FontWeight.bold,
  fontSize: ScreenUtil().setSp(28),
  color: cwColor3,
);

var kText21Bold_2 = kTextConfig.copyWith(
  fontWeight: FontWeight.bold,
  fontSize: ScreenUtil().setSp(21),
  color: cwColor2,
);

var kText20Bold_1 = kTextConfig.copyWith(
  fontWeight: FontWeight.bold,
  fontSize: ScreenUtil().setSp(20),
  color: cwColor1,
);
var kText20Bold_4 = kText20Bold_1.copyWith(color: cwColor4);
var kText20Bold_5 = kText20Bold_1.copyWith(color: cwColor3);
var kText20Normal_4 = kText20Bold_4.copyWith(fontWeight: FontWeight.normal);
var kText20Normal_1 = kText20Bold_1.copyWith(fontWeight: FontWeight.normal);



var kText18Bold_11 = kTextConfig.copyWith(
  fontWeight: FontWeight.bold,
  fontSize: ScreenUtil().setSp(18),
  color: cwColor11,
);
var kText18Bold_2 = kText18Bold_11.copyWith(
  color: cwColor2
);
var kText18Bold_3 = kText18Bold_11.copyWith(
    color: cwColor3
);
var kText18Normal_4 = kText18Bold_11.copyWith(
    color: cwColor4,
  fontWeight: FontWeight.normal,
);
var kText18Bold_14 = kText18Bold_11.copyWith(
    color: cwColor14
);
var kText17Normal_4 = kTextConfig.copyWith(
  fontWeight: FontWeight.normal,
  fontSize: ScreenUtil().setSp(17),
  color: cwColor4,
);


var kText16Normal_3 = kTextConfig.copyWith(
  fontSize: ScreenUtil().setSp(16),
  color: cwColor3,
);
var kText16Bold_3 = kTextConfig.copyWith(
  fontSize: ScreenUtil().setSp(16),
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
  fontSize: ScreenUtil().setSp(15),
  color: cwColor7,
);

var kText14Normal_4 = kTextConfig.copyWith(
  fontWeight: FontWeight.normal,
  fontSize: ScreenUtil().setSp(14),
  color: cwColor4,
);
var kText14Normal_5 = kText14Normal_4.copyWith(color: cwColor5);
var kText14Normal_2 = kText14Normal_4.copyWith(color: cwColor2);
var kText14Normal_3 = kText14Normal_4.copyWith(color: cwColor3);

var kText12Normal_18 = kText16Normal_18.copyWith(
  fontSize: ScreenUtil().setSp(12),
);
var kText12Normal_13 = kText12Normal_18.copyWith(
  color: cwColor13,
);
var kText14Medium_1 = kTextConfig.copyWith(
  fontWeight: FontWeight.w600,
  fontSize: ScreenUtil().setSp(14),
  color: cwColor1,
);
