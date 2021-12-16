import 'package:carousel_slider/carousel_slider.dart';
import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/common/config/texts_config.dart';
import 'package:cowin_1/models/data.dart';
import 'package:cowin_1/models/news.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewsPage extends StatefulWidget {
  final Function(int) changeTab;
  final tabIndex;
  final ScrollController scrollController;

  NewsPage(
      {Key? key,
      required this.changeTab,
      required this.tabIndex,
      required this.scrollController})
      : super(key: key);

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage>
    with SingleTickerProviderStateMixin {
  List<Widget> _hotNewsSliders = [];
  List<News> listHotNews = [];

  int _currentItem = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    loadData();
  }

  loadData() {
    for (int i = 0; i < 3; i++) {
      listHotNews.add(News.fromJson(listNews[i]));
    }
    _loadHotNewSliders();
  }

  _loadHotNewSliders() {
    for (int i = 0; i < 3; i++) {
      var item = listHotNews[i];
      _hotNewsSliders.add(
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.h),
              child: Container(
                height: 150.h,
                child: Image.asset(item.image!),
              ),
            ),
            Text(
              item.title!,
              style: kText16Bold_3,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Text(
                  "• ${item.createdTime}",
                  style: kText14Normal_4,
                )),
                Expanded(
                    child: Text(
                  "• ${item.createdTime}",
                  style: kText14Normal_4,
                )),
              ],
            )
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        controller: widget.scrollController,
        child: Container(
          padding: EdgeInsets.only(left: 25.w),
          child: Column(
            children: [
              ///#region Official Update
              Column(
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 20.w),
                    height: 64.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Official Update",
                              style: kText35Bold_7,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: cwColor4,
                              size: 35.h,
                            )
                          ],
                        ),
                        Text(
                          "Form authority source",
                          style: kText18Normal_4,
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 295.h,
                    padding: EdgeInsets.only(top: 20.h, right: 20.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CarouselSlider(
                          items: _hotNewsSliders,
                          options: CarouselOptions(
                              autoPlay: true,
                              enlargeCenterPage: true,
                              aspectRatio: 2.0,
                              height: 240.h,
                              viewportFraction: 1,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  _currentItem = index;
                                });
                              }),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: listHotNews.map((url) {
                            int index = listHotNews.indexOf(url);
                            return Container(
                              width: 10.0,
                              height: 10.0,
                              margin: EdgeInsets.symmetric(horizontal: 2.0),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:
                                    _currentItem == index ? cwColor1 : cwColor4,
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 360.h,
                width: 650.w,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ItemNews(
                              title: listNews[0]["title"],
                              createdTime: listNews[0]["createdTime"],
                              type: listNews[0]["type"]),
                          SizedBox(
                            width: 10.w,
                          ),
                          ItemNews(
                              title: listNews[1]["title"],
                              createdTime: listNews[1]["createdTime"],
                              type: listNews[1]["type"]),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ItemNews(
                              title: listNews[2]["title"],
                              createdTime: listNews[2]["createdTime"],
                              type: listNews[2]["type"]),
                          SizedBox(
                            width: 10.w,
                          ),
                          ItemNews(
                              title: listNews[3]["title"],
                              createdTime: listNews[3]["createdTime"],
                              type: listNews[3]["type"]),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ItemNews(
                              title: listNews[4]["title"],
                              createdTime: listNews[4]["createdTime"],
                              type: listNews[4]["type"]),
                          SizedBox(
                            width: 10.w,
                          ),
                          ItemNews(
                              title: listNews[5]["title"],
                              createdTime: listNews[5]["createdTime"],
                              type: listNews[5]["type"]),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),

              ///#endregion

              ///#region Recommend
              Column(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 20.w),
                    height: 90.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Recommend",
                              style: kText35Bold_7,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: cwColor4,
                              size: 35.h,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          "Recommendations from the Ministry of Health about Covid-19",
                          style: kText18Normal_4,
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 300.h,
                    padding: EdgeInsets.only(top: 20.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CarouselSlider(
                          items: _hotNewsSliders,
                          options: CarouselOptions(
                              autoPlay: true,
                              enlargeCenterPage: true,
                              aspectRatio: 2.0,
                              height: 240.h,
                              viewportFraction: 1,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  _currentItem = index;
                                });
                              }),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: listHotNews.map((url) {
                            int index = listHotNews.indexOf(url);
                            return Container(
                              width: 10.0,
                              height: 10.0,
                              margin: EdgeInsets.symmetric(horizontal: 2.0),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:
                                    _currentItem == index ? cwColor1 : cwColor4,
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 360.h,
                width: 650.w,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ItemNews(
                              title: listNews[6]["title"],
                              createdTime: listNews[6]["createdTime"],
                              type: listNews[6]["type"]),
                          SizedBox(
                            width: 10.w,
                          ),
                          ItemNews(
                              title: listNews[7]["title"],
                              createdTime: listNews[7]["createdTime"],
                              type: listNews[7]["type"]),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ItemNews(
                              title: listNews[8]["title"],
                              createdTime: listNews[8]["createdTime"],
                              type: listNews[8]["type"]),
                          SizedBox(
                            width: 10.w,
                          ),
                          ItemNews(
                              title: listNews[9]["title"],
                              createdTime: listNews[9]["createdTime"],
                              type: listNews[9]["type"]),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ItemNews(
                              title: listNews[10]["title"],
                              createdTime: listNews[10]["createdTime"],
                              type: listNews[10]["type"]),
                          SizedBox(
                            width: 10.w,
                          ),
                          ItemNews(
                              title: listNews[11]["title"],
                              createdTime: listNews[11]["createdTime"],
                              type: listNews[11]["type"]),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),

              ///#endregion

              ///#region Top reading

              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 20.w),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Top reading",
                      style: kText35Bold_7,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Padding(
                    padding: EdgeInsets.only(right: 20.w),
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        ItemTopReading(
                            title: listNews[6]["title"],
                            createdTime: listNews[6]["createdTime"],
                            type: listNews[6]["type"],
                            num: "01",
                            numColor: Color(0xFFDF6D7A)),
                        ItemTopReading(
                            title: listNews[6]["title"],
                            createdTime: listNews[6]["createdTime"],
                            type: listNews[6]["type"],
                            num: "02",
                            numColor: Color(0xFF72D970)),
                        ItemTopReading(
                            title: listNews[6]["title"],
                            createdTime: listNews[6]["createdTime"],
                            type: listNews[6]["type"],
                            num: "03",
                            numColor: Color(0xFFF5D769)),
                        ItemTopReading(
                            title: listNews[6]["title"],
                            createdTime: listNews[6]["createdTime"],
                            type: listNews[6]["type"],
                            num: "04",
                            numColor: Color(0xFF3CB8DF)),
                        ItemTopReading(
                            title: listNews[6]["title"],
                            createdTime: listNews[6]["createdTime"],
                            type: listNews[6]["type"],
                            num: "05",
                            numColor: Color(0xFFC953BD)),
                      ],
                    ),
                  ),
                ],
              ),

              ///#endregion

              ///#region World
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30.h, right: 20.w),
                    height: 70.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "World",
                              style: kText35Bold_7,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: cwColor4,
                              size: 40.h,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Text(
                          "Pandemic situation around the world",
                          style: kText18Normal_4,
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 285.h,
                    margin: EdgeInsets.only(top: 20.h, right: 20.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CarouselSlider(
                          items: _hotNewsSliders,
                          options: CarouselOptions(
                              autoPlay: true,
                              enlargeCenterPage: true,
                              aspectRatio: 2.0,
                              height: 240.h,
                              viewportFraction: 1,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  _currentItem = index;
                                });
                              }),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: listHotNews.map((url) {
                            int index = listHotNews.indexOf(url);
                            return Container(
                              width: 10.0,
                              height: 10.0,
                              margin: EdgeInsets.symmetric(horizontal: 2.0),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:
                                    _currentItem == index ? cwColor1 : cwColor4,
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 130.h,
                width: 650.w,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ItemNews(
                              title: listNews[6]["title"],
                              createdTime: listNews[6]["createdTime"],
                              type: listNews[6]["type"]),
                          SizedBox(
                            width: 10.w,
                          ),
                          ItemNews(
                              title: listNews[7]["title"],
                              createdTime: listNews[7]["createdTime"],
                              type: listNews[7]["type"]),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),

              ///#endregion

              ///#region Vaccine
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 20.w),
                    height: 70.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Vaccine",
                              style: kText35Bold_7,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: cwColor4,
                              size: 40.h,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Text(
                          "Vaccine process and related",
                          style: kText18Normal_4,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 240.h,
                width: 650.w,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ItemNews(
                              title: listNews[6]["title"],
                              createdTime: listNews[6]["createdTime"],
                              type: listNews[6]["type"]),
                          SizedBox(
                            width: 20.w,
                          ),
                          ItemNews(
                              title: listNews[7]["title"],
                              createdTime: listNews[7]["createdTime"],
                              type: listNews[7]["type"]),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ItemNews(
                              title: listNews[8]["title"],
                              createdTime: listNews[8]["createdTime"],
                              type: listNews[8]["type"]),
                          SizedBox(
                            width: 20.w,
                          ),
                          ItemNews(
                              title: listNews[9]["title"],
                              createdTime: listNews[9]["createdTime"],
                              type: listNews[9]["type"]),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50.h,
              )

              ///#endregion
            ],
          ),
        ));
  }
}

class CustomTabBar extends StatelessWidget {
  final bool isActive;
  final title;
  final String? icon;

  const CustomTabBar(
      {Key? key, required this.title, this.icon, required this.isActive})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 50.h,
            width: 50.h,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: isActive ? cwColor1 : Color(0xFFE1DFDF),
                borderRadius: BorderRadius.circular(15.r)),
            child: icon != null
                ? SvgPicture.asset(icon!, color: isActive ? cwColor2 : cwColor4)
                : Container(),
          ),
          SizedBox(
            height: 5.h,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: isActive ? kText14Medium_1 : kText14Normal_4,
            ),
          ),
        ],
      ),
    );
  }
}

class ItemNews extends StatelessWidget {
  final title;
  final createdTime;
  final type;
  final image;

  ItemNews(
      {Key? key,
      required this.title,
      required this.createdTime,
      required this.type,
      this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.h,
      width: 320.w,
      margin: EdgeInsets.only(top: 15.h, bottom: 15.h, right: 20.w),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(right: 10.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    softWrap: true,
                    style: kText16Bold_3,
                  ),
                  Padding(
                      padding: EdgeInsets.only(right: 20.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "• $createdTime",
                            style: kText14Normal_4,
                          ),
                          Text(
                            "• $type",
                            style: kText14Normal_4,
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15.r),
            child: Container(
                height: 90.h,
                width: 85.w,
                color: cwColor4,
                child: Image.asset("assets/images/img_news2.png",
                    fit: BoxFit.fill)),
          )
        ],
      ),
    );
  }
}

class ItemTopReading extends StatelessWidget {
  final title;
  final createdTime;
  final type;
  final num;
  final Color numColor;

  ItemTopReading(
      {Key? key,
      required this.title,
      required this.createdTime,
      required this.type,
      required this.num,
      required this.numColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15.h),
      height: 90.h,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.r),
            child: Container(
              height: 90.h,
              width: 75.w,
              color: numColor.withOpacity(0.5),
              alignment: Alignment.center,
              child: Text(
                num,
                style: kText40Bold_3.copyWith(color: numColor),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 15.w, top: 5.h, right: 15.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: kText18Bold_3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "• $createdTime",
                        style: kText14Normal_4,
                      ),
                      Text(
                        "• $type",
                        style: kText14Normal_4,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.remove_red_eye_outlined,
                            color: cwColor4,
                          ),
                          Text(
                            "135,000",
                            style: kText14Normal_4,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
