import 'package:cowin_1/models/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modules/flutter_modules.dart';
import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/common/config/texts_config.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController _search = TextEditingController();

  String query = '';
  bool isSearch = false;
  List<Map<String, dynamic>> listSearch = [];
  List<Map<String, dynamic>> allItems = [];

  searchItem(String query) {
    setState(() {
      isSearch = true;
    });
    final items = listLocationHospital.where((item) {
      final nameLower = "${item["titleSearch"]}".toLowerCase();
      final searchLower = query.toLowerCase();

      return nameLower.contains(searchLower);
    }).toList();

    if (query == '')
      setState(() {
        this.query = query;
        isSearch = false;
      });
    else
      setState(() {
        this.query = query;
        listSearch = items;
      });
    print(listSearch.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cwColor2,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.only(top: 40.h),
          child: Column(
            children: [
              Container(
                height: 75.h,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 30.w,
                        padding: EdgeInsets.only(left: 20.w),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: cwColor3,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(
                            left: 20.w, right: 25.w, top: 10.h, bottom: 10.h),
                        padding: EdgeInsets.only(left: 20.w, right: 20.w),
                        decoration: BoxDecoration(
                            color: cwColor5,
                            borderRadius: BorderRadius.circular(10.r)),
                        child: Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: cwColor2,
                              size: 25.h,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.only(bottom: 12.h),
                                child: TextFormField(
                                  controller: _search,
                                  textAlignVertical: TextAlignVertical.center,
                                  style: kText16Normal_2,
                                  decoration: InputDecoration(
                                    hintText: "Search for place",
                                    hintStyle: kText16Normal_2,
                                    border: InputBorder.none,
                                  ),
                                  onChanged: (value) {
                                    searchItem(value);
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              if (isSearch && listSearch.isNotEmpty)
                Expanded(
                    child: ListView.separated(
                        itemBuilder: (_, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.pop(context, listSearch[index]);
                            },
                            child: Container(
                              height: 50.h,
                              padding: EdgeInsets.symmetric(horizontal: 30.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    listSearch[index]["name"],
                                    style: kText14Normal_3,
                                  ),
                                  Flexible(
                                      child: Text(
                                    listSearch[index]["address"],
                                    style: kText14Normal_4,
                                  )),
                                ],
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(
                                top: 8, bottom: 16, left: 40.w, right: 40.w),
                            child: Divider(
                              height: 1,
                              color: cwColor3,
                            ),
                          );
                        },
                        itemCount: listSearch.length)),
              if (!isSearch)
                Expanded(
                    child: ListView.separated(
                        itemBuilder: (_, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.pop(
                                  context, listLocationHospital[index]);
                            },
                            child: Container(
                              height: 42.h,
                              padding: EdgeInsets.only(left: 20.w, right: 25.w),
                              child: Row(children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  height: 40.w,
                                  width: 40.w,
                                  child: SvgPicture.asset(
                                    'assets/icons/local.svg',
                                    height: 30.h,
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        listLocationHospital[index]["name"],
                                        style: kText16Normal_3,
                                      ),
                                      Flexible(
                                          child: Text(
                                        listLocationHospital[index]["address"],
                                        style: kText14Normal_4,
                                      )),
                                    ],
                                  ),
                                ),
                              ]),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(
                                top: 8, bottom: 16, left: 55.w, right: 20.w),
                            child: Divider(
                              height: 1,
                              color: cwColor3,
                            ),
                          );
                        },
                        itemCount: listLocationHospital.length)),
              SizedBox(
                height: 50.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
