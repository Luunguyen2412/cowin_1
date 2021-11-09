import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/common/config/texts_config.dart';

class RecentlyCard extends StatelessWidget {
  const RecentlyCard(
    this.image,
    this.title,
  );

  @required
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Row(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      image,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                height: 134.h,
                width: 92.w,
              ),
            ),
            SizedBox(
              width: 9.w,
            ),
            Flexible(
              flex: 1,
              child: Text(
                title,
                style: kTextConfig.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: ScreenUtil().setSp(20),
                  color: cwColor3,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
