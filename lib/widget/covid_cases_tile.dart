import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../themes.dart';

class CasesItem extends StatelessWidget {
  late final String title;
  // late final String cases;
  late final Color colorBox;
  CasesItem(
    // this.cases,
    this.title,
    this.colorBox,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Container(
        color: colorBox,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              width: double.infinity,
              height: double.infinity,
            ),
            Container(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
                child: Text(
                  title,
                  style: normalText.copyWith(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
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
