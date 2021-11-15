import 'dart:math';

import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/common/config/texts_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DataPage extends StatefulWidget {
  const DataPage({Key? key}) : super(key: key);

  @override
  _DataPageState createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          children: [
            SizedBox(
              height: 25.h,
            ),
            Container(
              height: 40.h,
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Row(
                children: [
                  Container(
                    height: 40.h,
                    width: 160.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        border: Border.all(color: cwColor1)),
                  ),
                  SizedBox(
                    width: 40.w,
                  ),
                  Container(
                    height: 40.h,
                    width: 125.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        border: Border.all(color: cwColor1)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),

            ///Chart Total case and Recovered
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 200.h,
                  width: 190.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.r),
                      boxShadow: [
                        BoxShadow(color: Color(0xFFA5A2A2), blurRadius: 5)
                      ]),
                  child: Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 10.h, left: 10.w),
                        child: Text(
                          "Total case",
                          style: kText14Normal_4,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 30.h, left: 10.w),
                        child: Text(
                          "312,611",
                          style: kText16Bold_3,
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 35.h, left: 10.w),
                          child: ChartColumn(
                            color: Color(0xFFF29191),
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  height: 200.h,
                  width: 190.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.r),
                      boxShadow: [
                        BoxShadow(color: Color(0xFFA5A2A2), blurRadius: 5)
                      ]),
                  child: Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 10.h, left: 10.w),
                        child: Text(
                          "Recovered",
                          style: kText14Normal_4,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 30.h, left: 10.w),
                        child: Text(
                          "150,145",
                          style: kText16Bold_3,
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 35.h, left: 10.w),
                          child: ChartColumn(
                            color: Color(0xFF94D0CC),
                          ))
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),

            ///Chart Active case and Total death
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 200.h,
                  width: 190.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.r),
                      boxShadow: [
                        BoxShadow(color: Color(0xFFA5A2A2), blurRadius: 5)
                      ]),
                  child: Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 10.h, left: 10.w),
                        child: Text(
                          "Active case",
                          style: kText14Normal_4,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 30.h, left: 10.w),
                        child: Text(
                          "160,123",
                          style: kText16Bold_3,
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 35.h, left: 10.w),
                          child: ChartColumn(
                            color: Color(0xFFF7D59C),
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  height: 200.h,
                  width: 190.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.r),
                      boxShadow: [
                        BoxShadow(color: Color(0xFFA5A2A2), blurRadius: 5)
                      ]),
                  child: Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 10.h, left: 10.w),
                        child: Text(
                          "Total death",
                          style: kText14Normal_4,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 30.h, left: 10.w),
                        child: Text(
                          "514",
                          style: kText16Bold_3,
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 35.h, left: 10.w),
                          child: ChartColumn(
                            color: Color(0xFFD1D9D9),
                          ))
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),

            Container(
              height: 400.h,
              child: ChartColumn(),
            ),

            Container(
              height: 234.h,
              width: 234.h,
              child: ChartPie(),
            ),
            Container(
              height: 250.h,
              child: ChartArea(),
            )
          ],
        ),
      ),
    );
  }
}

class ChartColumn extends StatelessWidget {
  final Color? color;
  final List<CovidData>? listData;
  final BorderRadius? borderRadius;

  const ChartColumn({Key? key, this.color, this.listData, this.borderRadius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
        // Initialize category axis
        primaryXAxis: CategoryAxis(
            axisLine: AxisLine(
          color: Colors.transparent,
        )),
        plotAreaBorderWidth: 0,
        margin: EdgeInsets.zero,
        series: <ColumnSeries<CovidData, String>>[
          ColumnSeries<CovidData, String>(
              borderRadius: borderRadius ?? BorderRadius.circular(0),
              color: color ?? Color(0xFFF29191),
              dataSource: listData ??
                  <CovidData>[
                    CovidData('1', 35),
                    CovidData('2', 28),
                    CovidData('3', 34),
                    CovidData('4', 32),
                    CovidData('5', 40),
                    CovidData('6', 50),
                    CovidData('7', 35),
                    CovidData('8', 28),
                    CovidData('9', 34),
                    CovidData('10', 32),
                    CovidData('11', 40),
                    CovidData('12', 50)
                  ],
              spacing: 0.01,
              xValueMapper: (CovidData data, _) => data.month,
              yValueMapper: (CovidData data, _) => data.number),
        ]);
  }
}

class ChartPie extends StatelessWidget {
  final Color? color;
  final List<CovidData>? listData;

  const ChartPie({Key? key, this.color, this.listData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfCircularChart(
        // Initialize category axis
        series: <PieSeries<CovidData, String>>[
          PieSeries<CovidData, String>(
              // Bind data source
              //   trackColor: color??Color(0xFFF29191),
              explode: true,
              explodeIndex: 0,
              explodeOffset: '10%',
              dataSource: listData ??
                  <CovidData>[
                    CovidData(
                      '1',
                      20,
                    ),
                    CovidData('2', 20),
                    CovidData('3', 20),
                    CovidData('4', 20),
                    CovidData('5', 20)
                  ],
              xValueMapper: (CovidData data, _) => data.month,
              yValueMapper: (CovidData data, _) => data.number,
              dataLabelMapper: (CovidData data, _) => data.number.toString(),
              startAngle: 90,
              endAngle: 90,
              dataLabelSettings: const DataLabelSettings(isVisible: true))
        ]);
  }
}

class ChartArea extends StatelessWidget {
  final Color? color;
  final List<CovidData>? listData;

  const ChartArea({Key? key, this.color, this.listData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
        // Initialize category axis
        primaryXAxis: CategoryAxis(),
        title: ChartTitle(),
        series: <AreaSeries<CovidData, String>>[
          AreaSeries<CovidData, String>(
              // Bind data source
              //   trackColor: color??Color(0xFFF29191),
              dataSource: listData ??
                  <CovidData>[
                    CovidData('1', 35),
                    CovidData('2', 28),
                    CovidData('3', 34),
                    CovidData('4', 32),
                    CovidData('5', 40)
                  ],
              xValueMapper: (CovidData data, _) => data.month,
              yValueMapper: (CovidData data, _) => data.number)
        ]);
  }
}

class CovidData {
  CovidData(this.month, this.number);

  final String month;
  final double number;
}
