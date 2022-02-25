import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/common/config/texts_config.dart';
import 'package:cowin_1/models/countries.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modules/flutter_modules.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DataPage extends StatefulWidget {
  const DataPage({Key? key}) : super(key: key);

  @override
  _DataPageState createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  String _valueLocation = "Vietnam";
  String _valueLocation1 = "Vietnam";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(
              height: 25.h,
            ),
            Container(
              height: 60.h,
              child: Row(
                children: [
                  Container(
                      height: 50.h,
                      width: 180.w,
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          border: Border.all(color: cwColor1)),
                      child: renderProvinceInput()),
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
                  height: 230.h,
                  width: 180.w,
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
                          style: kText14Normal_4.copyWith(
                            fontSize: ScreenUtil().setSp(16),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 30.h, left: 10.w),
                        child: Text(
                          "312,611",
                          style: kText22Bold_5,
                        ),
                      ),
                      Container(
                          height: 200.h,
                          margin: EdgeInsets.only(top: 40.h),
                          padding: EdgeInsets.only(top: 35.h),
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
                  height: 230.h,
                  width: 180.w,
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
                          style: kText14Normal_4.copyWith(
                            fontSize: ScreenUtil().setSp(16),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 30.h, left: 10.w),
                        child: Text(
                          "150,145",
                          style: kText22Bold_5,
                        ),
                      ),
                      Container(
                          height: 200.h,
                          margin: EdgeInsets.only(top: 40.h),
                          padding: EdgeInsets.only(top: 35.h),
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
                  height: 230.h,
                  width: 180.w,
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
                          style: kText14Normal_4.copyWith(
                            fontSize: ScreenUtil().setSp(18),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 30.h, left: 10.w),
                        child: Text(
                          "160,123",
                          style: kText22Bold_5,
                        ),
                      ),
                      Container(
                          height: 200.h,
                          margin: EdgeInsets.only(top: 40.h),
                          padding: EdgeInsets.only(top: 35.h),
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
                  height: 230.h,
                  width: 180.w,
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
                          style: kText14Normal_4.copyWith(
                            fontSize: ScreenUtil().setSp(18),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 30.h, left: 10.w),
                        child: Text(
                          "514",
                          style: kText22Bold_5,
                        ),
                      ),
                      Container(
                          height: 200.h,
                          margin: EdgeInsets.only(top: 40.h),
                          padding: EdgeInsets.only(top: 35.h),
                          child: ChartColumn(
                            color: Color(0xFFD1D9D9),
                          ))
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),

            Column(
              children: [
                Container(
                  height: 65.h,
                  child: Row(
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Case by Province",
                              style: kText35Bold_7,
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 5.w,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 15.h,
                                      width: 15.h,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xFF2494E0)),
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Text(
                                      "Cases",
                                      style: kText16Normal_4,
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 15.w),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 15.h,
                                        width: 15.h,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xFF2494E0)
                                                .withOpacity(0.5)),
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      Text(
                                        "New cases last 7 day ",
                                        style: kText16Normal_4,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  height: 400.h,
                  child: ChartStackedColumn(),
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Column(
              children: [
                Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Insolation ratio",
                      style: kText35Bold_7,
                    )),
                Container(
                  height: 400.h,
                  width: 400.h,
                  child: ChartPie(),
                ),
                Container(
                  height: 65.h,
                  width: 310.w,
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.r),
                        bottomRight: Radius.circular(20.r),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: cwColor4,
                            blurRadius: 10.h,
                            offset: Offset(2, 5))
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 10.w,
                      ),
                      Container(
                        width: 85.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 15,
                              width: 15,
                              decoration: BoxDecoration(
                                  color: Color(0xFF2494E0),
                                  shape: BoxShape.circle),
                            ),
                            Expanded(
                              child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "At home",
                                        style: kText16Normal_4),
                                    TextSpan(
                                        text: "\n1,4M", style: kText26Bold_4),
                                  ])),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Expanded(
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 15,
                                width: 15,
                                decoration: BoxDecoration(
                                    color: Color(0xFFF7D59C),
                                    shape: BoxShape.circle),
                              ),
                              Expanded(
                                child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "At the center",
                                          style: kText16Normal_4),
                                      TextSpan(
                                          text: "\n600K", style: kText26Bold_4),
                                    ])),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Container(
                        width: 85.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 15,
                              width: 15,
                              decoration: BoxDecoration(
                                  color: Color(0xFFA1CAE2),
                                  shape: BoxShape.circle),
                            ),
                            Expanded(
                              child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "No", style: kText16Normal_4),
                                    TextSpan(
                                        text: "\n80M", style: kText26Bold_4),
                                  ])),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),

            SizedBox(
              height: 50.h,
            ),
            Column(
              children: [
                Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Vaccinations",
                      style: kText35Bold_7,
                    )),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  height: 60.h,
                  child: Row(
                    children: [
                      Container(
                          height: 50.h,
                          width: 180.w,
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.r),
                              border: Border.all(color: cwColor1)),
                          child: renderProvinceInput1()),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 250.h,
                  child: ChartArea(),
                ),
              ],
            ),
            SizedBox(
              height: 50.h,
            ),
          ],
        ),
      ),
    );
  }

  Widget renderProvinceInput() {
    Map<String, String> listName = {};
 
    List<DropdownMenuItem<String>> items = [];

    countries.forEach((item) {
      listName.putIfAbsent("${countries.indexOf(item)}", () => item["name"]);
      items.add(
        DropdownMenuItem(
          child: Container(
            width: 200.w,
            height: 40.h,
            child: Row(
              children: [
                Container(
                  height: 30.h,
                  width: 30.w,
                  child: SvgPicture.network(
                    item["flag"],
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Flexible(
                  child: Container(
                    width: 150.w,
                    child: Text(
                      item["name"],
                      overflow: TextOverflow.ellipsis,
                      style: kText16Bold_3,
                    ),
                  ),
                ),
              ],
            ),
          ),
          value: "${countries.indexOf(item)}",
        ),
      );
    });
    String? value;

    listName.forEach((key, v) async {
      if (v == _valueLocation) {
        value = key;
      }
    });
    return DropdownButton(
      items: items,
      value: value,
      isDense: false,
      isExpanded: true,
      icon: Padding(
        padding: EdgeInsets.only(left: 0.w),
        child: Icon(
          Icons.arrow_drop_down_sharp,
          color: cwColor3,
        ),
      ),
      iconSize: 24.h,
      onChanged: (val) async {
        listName.forEach((key, value) {
          if (key == val) {
            setState(() {
              _valueLocation = value;
            });
          }
        });
      },
      style: kText16Bold_3,
      dropdownColor: cwColor2,
      underline: Container(),
    );
  }

  Widget renderProvinceInput1() {
    Map<String, String> listName = {};
    List<DropdownMenuItem<String>> items = [];

    countries.forEach((item) {
      listName.putIfAbsent("${countries.indexOf(item)}", () => item["name"]);
      items.add(
        DropdownMenuItem(
          child: Container(
            width: 200.w,
            height: 40.h,
            child: Row(
              children: [
                Container(
                  height: 30.h,
                  width: 30.w,
                  child: SvgPicture.network(
                    item["flag"],
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Flexible(
                  child: Container(
                    width: 150.w,
                    child: Text(
                      item["name"],
                      softWrap: true,
                      overflow: TextOverflow.clip,
                      style: kText16Bold_3,
                    ),
                  ),
                ),
              ],
            ),
          ),
          value: "${countries.indexOf(item)}",
        ),
      );
    });
    String? value;

    listName.forEach((key, v) async {
      if (v == _valueLocation1) {
        value = key;
      }
    });
    return DropdownButton(
      items: items,
      value: value,
      isDense: false,
      isExpanded: true,
      icon: Padding(
        padding: EdgeInsets.only(left: 0.w),
        child: Icon(
          Icons.arrow_drop_down_sharp,
          color: cwColor3,
        ),
      ),
      iconSize: 24.h,
      onChanged: (val) async {
        listName.forEach((key, value) {
          if (key == val) {
            setState(() {
              _valueLocation1 = value;
            });
          }
        });
      },
      style: kText16Bold_3,
      dropdownColor: cwColor2,
      underline: Container(),
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
        primaryXAxis: CategoryAxis(isVisible: false),
        primaryYAxis: CategoryAxis(isVisible: false),
        plotAreaBorderWidth: 0,
        margin: EdgeInsets.zero,
        series: <ColumnSeries<CovidData, String>>[
          ColumnSeries<CovidData, String>(
              borderRadius: borderRadius ?? BorderRadius.circular(0),
              color: color ?? Color(0xFFF29191),
              dataSource: listData ??
                  <CovidData>[
                    CovidData(month: '1', number: 35),
                    CovidData(month: '2', number: 28),
                    CovidData(month: '3', number: 34),
                    CovidData(month: '4', number: 32),
                    CovidData(month: '5', number: 40),
                    CovidData(month: '6', number: 50),
                    CovidData(month: '7', number: 35),
                    CovidData(month: '8', number: 28),
                    CovidData(month: '9', number: 34),
                    CovidData(month: '10', number: 32),
                    CovidData(month: '11', number: 40),
                    CovidData(month: '12', number: 50)
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
            dataSource: listData ??
                <CovidData>[
                  CovidData(month: '2', number: 50, color: Color(0xFFA1CAE2)),
                  CovidData(month: '1', number: 40, color: Color(0xFF2494E0)),
                  CovidData(month: '3', number: 10, color: Color(0xFFF7D59C)),
                ],
            startAngle: 90,
            endAngle: 90,
            xValueMapper: (CovidData data, _) => data.month,
            yValueMapper: (CovidData data, _) => data.number,
            pointColorMapper: (CovidData data, _) => data.color,
          )
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
        primaryXAxis: DateTimeAxis(dateFormat: DateFormat("dd 'thg' MM")),
        title: ChartTitle(),
        series: <StackedAreaSeries<CovidData, DateTime>>[
          StackedAreaSeries<CovidData, DateTime>(
            dataSource: listData ??
                <CovidData>[
                  CovidData(month: '2021-03-27', number: 35),
                  CovidData(month: '2021-04-27', number: 28),
                  CovidData(month: '2021-05-27', number: 34),
                  CovidData(month: '2021-06-27', number: 32),
                  CovidData(month: '2021-07-27', number: 40)
                ],
            color: Color(0xFF2494E0),
            xValueMapper: (CovidData data, _) => DateTime.parse(data.month),
            yValueMapper: (CovidData data, _) => data.number,
          ),
          StackedAreaSeries<CovidData, DateTime>(
              // Bind data source
              //   trackColor: color??Color(0xFFF29191),
              dataSource: listData ??
                  <CovidData>[
                    CovidData(month: '2021-03-27', number: 35),
                    CovidData(month: '2021-04-27', number: 28),
                    CovidData(month: '2021-05-27', number: 34),
                    CovidData(month: '2021-06-27', number: 32),
                    CovidData(month: '2021-07-27', number: 40)
                  ],
              color: Color(0xFF2494E0).withOpacity(0.5),
              xValueMapper: (CovidData data, _) => DateTime.parse(data.month),
              yValueMapper: (CovidData data, _) => data.number)
        ]);
  }
}

class ChartStackedColumn extends StatelessWidget {
  ChartStackedColumn({Key? key}) : super(key: key);

  List<CovidData> _data = [
    CovidData(month: 'Hồ Chí Minh', number: 35, number2: 40),
    CovidData(month: 'An Giang', number: 28, number2: 40),
    CovidData(month: 'Vũng Tàu', number: 34, number2: 40),
    CovidData(month: 'Bắc Giang', number: 32, number2: 40),
    CovidData(month: 'Bắc Kạn', number: 40, number2: 40),
    CovidData(month: 'Bạc Liêu', number: 50, number2: 40),
  ];

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
        // Initialize category axis
        primaryXAxis: CategoryAxis(
            labelIntersectAction: AxisLabelIntersectAction.wrap,
            labelStyle: kText14Medium_1),
        primaryYAxis: NumericAxis(),
        plotAreaBorderWidth: 0,
        margin: EdgeInsets.zero,
        series: <StackedColumnSeries<CovidData, String>>[
          StackedColumnSeries<CovidData, String>(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25.r),
                bottomRight: Radius.circular(25.r)),
            color: Color(0xFF2494E0),
            dataSource: _data,
            spacing: 0.01,
            xValueMapper: (CovidData data, _) => data.month,
            yValueMapper: (CovidData data, _) => data.number,
          ),
          StackedColumnSeries<CovidData, String>(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(25.r),
                topLeft: Radius.circular(25.r)),
            color: Color(0xFF2494E0).withOpacity(0.5),
            dataSource: _data,
            spacing: 0.01,
            xValueMapper: (CovidData data, _) => data.month,
            yValueMapper: (CovidData data, _) => data.number2,
          ),
        ]);
  }
}

class CovidData {
  CovidData(
      {required this.month, required this.number, this.number2, this.color});

  final String month;
  final double number;
  final double? number2;
  final Color? color;
}
