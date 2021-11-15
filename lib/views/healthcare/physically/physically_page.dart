
import 'package:cowin_1/common/config/texts_config.dart';
import 'package:cowin_1/models/data.dart';
import 'package:cowin_1/views/healthcare/physically/widgets/exercise_item.dart';
import 'package:cowin_1/views/healthcare/physically/widgets/exercise_item2.dart';
import 'package:cowin_1/views/healthcare/physically/widgets/rehabilitation_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhysicallyPage extends StatefulWidget {
  const PhysicallyPage({Key? key}) : super(key: key);

  @override
  _PhysicallyPageState createState() => _PhysicallyPageState();
}

class _PhysicallyPageState extends State<PhysicallyPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Text(
                "Exercises at home",
                style: kText35Bold_7,
              ),
            ),
            Container(
              height: 170.h,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: listExercisesAtHome.length,
                  itemBuilder: (_, index) {
                    var item = listExercisesAtHome[index];
                    return ExerciseItem(
                        image: item["image"],
                        title: item["title"],
                        subTitle: item["subTitle"]);
                  }),
            ),
            SizedBox(height: 40.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Exercises for F1, F0",
                    style: kText35Bold_7,
                  ),
                  Text(
                    "The simple exercises help F1, F0 improve health",
                    style: kText17Normal_4,
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.h),
            Container(
              height: 400.h,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: listExercisesForF1F2.length,
                  itemBuilder: (_, index) {
                    var item = listExercisesForF1F2[index];
                    return ExerciseItem2(
                        image: item["image"],
                        title: item["title"],
                        subTitle: item["subTitle"]);
                  }),
            ),
            SizedBox(height: 40.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Rehabilitation",
                    style: kText35Bold_7,
                  ),
                  Text(
                    "Rehabilitation after hospital discharge",
                    style: kText17Normal_4,
                  ),
                  SizedBox(height: 12.h),
                  Container(
                      height: 700.h,
                      child: GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 20.w,
                            mainAxisSpacing: 20.w,
                          ),
                          itemCount: listRehabilitation.length,
                          itemBuilder: (context, index) {
                            var item = listRehabilitation[index];
                            return Rehabilitation(
                                name: item["name"],
                                image: item["image"],
                                backgroundColor: item["backgroundColor"],
                                titleColor: item["titleColor"]);
                          }))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
