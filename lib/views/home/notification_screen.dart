import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/common/config/texts_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: cwColor2,
          leadingWidth: 0,
          toolbarHeight: 145.h,
          title: Container(
            child: Text(
              "Healthcare",
              style: kText40Bold_3,
            ),
          ),
        ),
      ),
    );
  }
}
