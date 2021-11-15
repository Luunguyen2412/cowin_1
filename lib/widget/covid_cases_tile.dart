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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      padding: EdgeInsets.all(5),
      child: Container(
        color: colorBox,
        child: Stack(
          children: [
            Container(
              height: 138.h,
              width: 177.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
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
            // Container(
            //   child: Padding(
            //     padding:
            //         const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
            //     child: Text(
            //       title,
            //       style: normalText.copyWith(
            //         fontWeight: FontWeight.w700,
            //         color: Colors.white,
            //       ),
            //     ),
            //   ),
            // ),
            // Container(
            //   child: Padding(
            //     padding: const EdgeInsets.symmetric(horizontal: 50.0),
            //     child: Text(
            //       cases,
            //       style: normalText.copyWith(
            //         fontWeight: FontWeight.w700,
            //         color: Colors.white,
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
