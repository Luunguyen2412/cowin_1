import 'package:cowin_1/themes.dart';
import 'package:cowin_1/widget/covid_cases_tile.dart';
import 'package:cowin_1/widget/news_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Scaffold(
        backgroundColor: kWhiteColor,
        body: SafeArea(
          child: Container(
            color: kWhiteColor,
            child: ListView(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Container(
                        child: Text(
                          "Cowin",
                          style:
                              heading.copyWith(color: kBlueColor, fontSize: 28),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 120,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notification_add_outlined,
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.settings,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    child: Text(
                      "Are you feeling sick?",
                      style: heading.copyWith(color: kBlueColor, fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    child: Text(
                      "If you felling sick with any COVID-19 symptoms, please call or sms for us imediately for help.",
                      style:
                          normalText.copyWith(color: kBlueColor, fontSize: 18),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                  ),
                  child: Row(
                    children: [
                      GestureDetector(
                        child: Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.red,
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            'Call now',
                            style: heading.copyWith(
                                color: kWhiteColor, fontSize: 18),
                          ),
                        ),
                        onTap: () {},
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        child: Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.green,
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            'Send SMS',
                            style: heading.copyWith(
                                color: kWhiteColor, fontSize: 18),
                          ),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    child: Text(
                      "Covid Cases",
                      style:
                          heading.copyWith(color: Colors.black, fontSize: 28),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    child: Text(
                      "Update lasted 3 minute ago",
                      style:
                          normalText.copyWith(color: kTextColor, fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: GridView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, childAspectRatio: 28 / 16),
                    children: [
                      CasesItem(
                        'Infected',
                        CustomColors.yellow,
                      ),
                      CasesItem(
                        'Death',
                        CustomColors.red,
                      ),
                      CasesItem(
                        'Recovered',
                        CustomColors.green,
                      ),
                      CasesItem(
                        'Treated',
                        CustomColors.blue,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    child: Text(
                      "Hot news",
                      style:
                          heading.copyWith(color: Colors.black, fontSize: 28),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    child: Text(
                      "Update news about covid in the country",
                      style:
                          normalText.copyWith(color: kTextColor, fontSize: 16),
                    ),
                  ),
                ),

                Text('data'),
                // Padding(
                //   padding: EdgeInsets.symmetric(horizontal: 20.0),
                //   child: ListView(
                //     physics: BouncingScrollPhysics(),
                //     shrinkWrap: true,
                //     children: [
                //       NewTile(
                //           image: '',
                //           title:
                //               'Hanoi added 51 new COVID-19 cases, only HH 4C Linh Dam apartment building has 13 cases'),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

List<Color> colorBoxs = [
  CustomColors.yellow,
  CustomColors.green,
  CustomColors.red,
  Colors.blue,
];
List<String> names = ['Infected', 'Recovered', 'Death', 'Treated'];
