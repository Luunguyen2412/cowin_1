import 'package:carousel_slider/carousel_slider.dart';
import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/common/config/texts_config.dart';
import 'package:cowin_1/models/data.dart';
import 'package:cowin_1/models/news.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OfficialUpdatePage extends StatefulWidget {
  const OfficialUpdatePage({Key? key}) : super(key: key);

  @override
  _OfficialUpdatePageState createState() => _OfficialUpdatePageState();
}

class _OfficialUpdatePageState extends State<OfficialUpdatePage> {
  List<Widget> _hotNewsSliders = [];
  List<News> listHotNews = [];
  int _currentItem = 0;
  _loadHotNewSliders() {
    for(int i =0; i<3;i++){
      var item = listHotNews[i];
      _hotNewsSliders.add(
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.h),
              child: Container(
                height: 140.h,
                child: Image.asset(item.image!),
              ),
            ),
            Text(item.title!,style: kText16Bold_3,),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: Text("• ${item.createdTime}",style: kText14Normal_4,)),
                Expanded(child: Text("• ${item.createdTime}",style: kText14Normal_4,)),
              ],
            )
          ],
        ),
      );
    }

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() {
    for(int i =0; i<3;i++){
      listHotNews.add(News.fromJson(listNews[i]));
    }

    _loadHotNewSliders();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            Column(
              children: [
                Container(
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
                            size: 40.h,
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
                            }
                        ),
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
                              color: _currentItem == index ? cwColor1 : cwColor4,
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
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
                            size: 40.h,
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
                            }
                        ),
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
                              color: _currentItem == index ? cwColor1 : cwColor4,
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
