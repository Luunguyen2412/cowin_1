import 'package:cowin_1/models/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          padding: EdgeInsets.only(top: 50.h),
          child: Column(
            children: [
              Container(
                height: 65.h,
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
                        margin: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 10.h),
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
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
                                child: TextFormField(
                                  controller: _search,
                                  textAlignVertical: TextAlignVertical.center,
                                  style: kText16Normal_2,
                                  decoration: InputDecoration(
                                    hintText: "Search for place",
                                    hintStyle: kText16Normal_2,
                                    contentPadding:
                                        EdgeInsets.only(bottom: 17.h),
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
                          onTap: (){
                            Navigator.pop(context, listSearch[index]);
                          },
                          child: Container(
                            height: 40.h,
                            padding: EdgeInsets.symmetric(horizontal: 12.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          margin: EdgeInsets.only(top: 8, bottom: 16),
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
                            onTap: (){
                              Navigator.pop(context, listLocationHospital[index]);
                            },
                            child: Container(
                              height: 40.h,
                              padding: EdgeInsets.symmetric(horizontal: 12.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    listLocationHospital[index]["name"],
                                    style: kText14Normal_3,
                                  ),
                                  Flexible(
                                      child: Text(
                                        listLocationHospital[index]["address"],
                                        style: kText14Normal_4,
                                      )),
                                ],
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(top: 8, bottom: 16),
                            child: Divider(
                              height: 1,
                              color: cwColor3,
                            ),
                          );
                        },
                        itemCount: listLocationHospital.length)),

              SizedBox(height: 50.h,)
            ],
          ),
        ),
      ),
    );
  }
}
