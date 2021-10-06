import 'package:cowin_1/common/config/colors_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReturnButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 36.h, vertical: 1.h),
        child: Ink(
            decoration: ShapeDecoration(
              color: cwColor9,
              shape: CircleBorder(),
            ),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_sharp))),
      ),
    );
  }
}
