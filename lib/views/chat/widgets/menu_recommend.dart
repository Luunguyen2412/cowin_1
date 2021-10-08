import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/common/config/texts_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuRecommend extends StatefulWidget {
  final Function(int, String) onSelected;
  const MenuRecommend({Key? key,required this.onSelected}) : super(key: key);

  @override
  _MenuRecommendState createState() => _MenuRecommendState();
}

class _MenuRecommendState extends State<MenuRecommend> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height - 300.h,
        bottom: 50.h,
        left: 10.w,
        right: 10.w,
      ),
      backgroundColor: Colors.transparent,
      child: Container(
        height: 250.h,
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        decoration: BoxDecoration(
            color: cwColor2, borderRadius: BorderRadius.circular(10.h)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                widget.onSelected(1, "Về chúng tôi");
                Navigator.pop(context);
              },
              child: Container(
                height: 40.h,
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Về chúng tôi",
                  style: kText16Normal_3,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                widget.onSelected(2, "Sử dụng giọng nói");
                Navigator.pop(context);
              },
              child: Container(
                height: 40.h,
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Sử dụng giọng nói",
                  style: kText16Normal_3,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                widget.onSelected(3, "Sức khỏe của bạn");
                Navigator.pop(context);
              },
              child: Container(
                height: 40.h,
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Sức khỏe",
                  style: kText16Normal_3,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                widget.onSelected(4, "COVID-19");
                Navigator.pop(context);
              },
              child: Container(
                height: 40.h,
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "COVID-19",
                  style: kText16Normal_3,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
