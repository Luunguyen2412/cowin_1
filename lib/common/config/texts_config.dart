import 'package:cowin_1/common/config/colors_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const fontFamily = "Roboto";

/// cách đặt tên kText[$font_size][$style]_[$idColor]

var kTextConfig = TextStyle(
    fontSize: ScreenUtil().setSp(20),
    fontWeight: FontWeight.normal,
    color: cwColor3,
    fontFamily: fontFamily);

var kText30Normal_1 = kTextConfig.copyWith(
    fontWeight: FontWeight.normal,
    fontSize: ScreenUtil().setSp(30),
    color: cwColor1,);
var kText30Bold_1 = kText30Normal_1.copyWith(
  fontWeight: FontWeight.bold,
);

var kText14Normal_4 = kTextConfig.copyWith(
    fontWeight: FontWeight.normal,
    fontSize: ScreenUtil().setSp(14),
    color: cwColor4,);
var kText14Normal_5 = kText14Normal_4.copyWith(
  color: cwColor5
);
