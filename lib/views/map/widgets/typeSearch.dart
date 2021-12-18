import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/common/config/texts_config.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TypeSearch extends StatelessWidget {
  final title;
  final icon;
  final onTap;

  const TypeSearch(
      {Key? key, required this.title, required this.icon, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        height: 100.h,
        margin: EdgeInsets.only(right: 20.w),
        padding: EdgeInsets.only(top: 10.h, left: 10.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 60.h,
              width: 60.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.h),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 8,
                        color: Color(0xFFDAD3D3),
                        offset: Offset(0, 5))
                  ]),
              child: Image.asset(
                icon,
                width: 45.h,
                height: 45.h,
              ),
            ),
            Text(
              title,
              style: kText16Normal_4,
            )
          ],
        ),
      ),
    );
  }
}
