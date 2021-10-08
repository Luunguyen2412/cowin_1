import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/common/config/texts_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendItem extends StatefulWidget {
  final String name;
  final Function(String) onTap;

  const RecommendItem({Key? key, required this.name, required this.onTap})
      : super(key: key);

  @override
  _RecommendItemState createState() => _RecommendItemState();
}

class _RecommendItemState extends State<RecommendItem>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));
    animation = CurvedAnimation(parent: _controller!, curve: Curves.easeIn);
    animation!.addListener(() => setState(() {}));
    _controller!.forward();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onTap(widget.name);
      },
      child: Container(
        height: animation!.value * 40.h,
        margin: EdgeInsets.only(bottom: 20.h,right: 8.h),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: cwColor2,
            borderRadius: BorderRadius.circular(20.h),
            boxShadow: [
              BoxShadow(
                color: cwColor4,
                offset: const Offset(
                  3.0,
                  3.0,
                ),
                blurRadius: 5.0,
              ),
            ]),
        child: Container(
            alignment: Alignment.center,
            child: Text(
              widget.name,
              style: kText12Normal_18,
            )),
      ),
    );
  }
}
