import 'package:cowin_1/common/config/colors_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    required this.child,
  });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 63.h,
      width: 370.w,
      decoration: BoxDecoration(
        color: cwColor8,
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
