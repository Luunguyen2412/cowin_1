import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/common/config/texts_config.dart';
import 'package:cowin_1/views/vaccination/bloc/vaccination_bloc.dart';
import 'package:cowin_1/views/vaccination/bloc/vaccination_event.dart';
import 'package:cowin_1/views/vaccination/widget/cases_covid_screen.dart';
import 'package:cowin_1/views/vaccination/widget/custom_tabbar.dart';
import 'package:cowin_1/views/vaccination/widget/vaccine_covid_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'bloc/vaccination_state.dart';

// class VaccinationScreen extends StatefulWidget {
//   const VaccinationScreen({Key? key}) : super(key: key);
//   @override
//   State<VaccinationScreen> createState() => _VaccinationScreenState();
// }
// class _VaccinationScreenState extends State<VaccinationScreen>
//     with TickerProviderStateMixin {
//   //late GlobalKey _vaccinGlobalKey;
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (BuildContext context) =>
//           VaccinationBloc()..add(const LoadEvent()),
//       child: BlocBuilder<VaccinationBloc, VaccinationState>(
//           builder: (context, state) {
//         final bloc = BlocProvider.of<VaccinationBloc>(context);
//         Widget _title() {
//           return Container(
//             width: MediaQuery.of(context).size.width,
//             color: primaryColor,
//             height: 100.h,
//             child: Container(
//               margin: EdgeInsets.only(left: 15.w, top: 60.h),
//               child: Text("Data covid cases of Vietnam",
//                   style: kTextConfig.copyWith(
//                     fontWeight: FontWeight.w500,
//                     fontSize: ScreenUtil().setSp(24.sp),
//                     color: cwColor2,
//                   )),
//             ),
//           );
//         }
//         Widget _body() {
//           Widget __searchWidget() {
//             return SizedBox(
//               height: 54,
//               child: TextField(
//                 //controller: searchEditController,
//                 style: Theme.of(context).textTheme.bodyText2!,
//                 decoration: InputDecoration(
//                     isDense: true,
//                     labelStyle: Theme.of(context)
//                         .textTheme
//                         .bodyText2!
//                         .copyWith(color: primaryColor),
//                     hintText: "Tìm kiếm theo tỉnh thành",
//                     prefixIcon: Icon(
//                       Icons.search,
//                       color: primaryColor,
//                     ),
//                     // suffixIcon: searchEditController.text.isNotEmpty
//                     //     ? IconButton(
//                     //         onPressed: () {
//                     //           searchEditController.clear();
//                     //         },
//                     //         icon: const Icon(
//                     //           Icons.clear,
//                     //           color: Colors.grey,
//                     //         ),
//                     //       )
//                     //     : null,
//                     suffixIcon: IconButton(
//                       onPressed: () {                 
//                       },
//                       icon: const Icon(
//                         Icons.clear,
//                         color: Colors.grey,
//                       ),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                         borderRadius:
//                             const BorderRadius.all(Radius.circular(10)),
//                         borderSide: BorderSide(width: 1, color: primaryColor)),
//                     enabledBorder: OutlineInputBorder(
//                         borderRadius:
//                             const BorderRadius.all(Radius.circular(10)),
//                         borderSide: BorderSide(width: 1, color: primaryColor)),
//                     border: OutlineInputBorder(
//                         borderRadius:
//                             const BorderRadius.all(Radius.circular(10)),
//                         borderSide: BorderSide(width: 1, color: primaryColor))),
//               ),
//             );
//           }
//           Widget _titleListWidget() {
//             Text ___textTitle(String txt) => Text(txt,
//                 style: kTextConfig.copyWith(
//                   fontWeight: FontWeight.w500,
//                   fontSize: ScreenUtil().setSp(20.sp),
//                   color: cwColor14,
//                 ));
//             return Row(
//               children: [
//                 Expanded(flex: 1, child: ___textTitle("City")),
//                 const SizedBox(width: 8.0),
//                 Expanded(flex: 1, child: ___textTitle("Total ")),
//                 const SizedBox(width: 8.0),
//                 Expanded(flex: 1, child: ___textTitle("New cases")),
//               ],
//             );
//           }
//           Widget _listDataWidget() {
//             Widget ___newsCaseItem(int incconfirmed) => Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Icon(Icons.arrow_upward,
//                         color:
//                             incconfirmed > 0 ? Colors.red : Colors.transparent,
//                         size: 16),
//                     Text(
//                       incconfirmed > 0
//                           ? NumberFormat.decimalPattern().format(incconfirmed)
//                           : "-",
//                       style: TextStyle(
//                         color: Colors.red,
//                       ),
//                     ),
//                   ],
//                 );
//             return Expanded(
//               child: bloc.listSearchProvince.isEmpty
//                   ? Center(
//                       child: Text('Không có dữ liệu'),
//                     )
//                   : ListView(
//                       physics: const AlwaysScrollableScrollPhysics(),
//                       padding: const EdgeInsets.only(bottom: 20),
//                       children: bloc.listSearchProvince.map((e) {
//                         return Container(
//                           decoration: const BoxDecoration(
//                               border: Border(
//                                   bottom: BorderSide(
//                                       width: 1, color: Colors.black12))),
//                           padding: const EdgeInsets.symmetric(vertical: 10),
//                           child: Row(
//                             children: [
//                               Expanded(child: Text(e.title!)), // tên tỉnh thành
//                               SizedBox(width: 8),
//                               Expanded(
//                                 child: Text(NumberFormat.decimalPattern()
//                                     .format(e.confirmed!)), // tổng số ca bệnh
//                               ),
//                               SizedBox(width: 8),
//                               // Expanded(child:  ___newsCaseItem(e.incconfirmed!)),
//                               Expanded(
//                                   child: Container(
//                                       child: ___newsCaseItem(e.incconfirmed!))),
//                             ],
//                           ),
//                         );
//                       }).toList()),
//             );
//           }
//           return Expanded(
//               child: Container(
//             padding:
//                 const EdgeInsets.only(left: 12, right: 12, bottom: 12, top: 16),
//             child: Column(
//               children: [
//                 //__searchWidget(),
//                 _titleListWidget(),
//                 SizedBox(height: 8),
//                 _listDataWidget(),
//               ],
//             ),
//           ));
//         }
//         return Scaffold(
//           backgroundColor: Colors.white,
//           body: Column(
//             mainAxisSize: MainAxisSize.min,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               _title(),
//               _body(),
//             ],
//           ),
//         );
//       }),
//     );
//   }
// }

class DataCovidScreen extends StatefulWidget {
  final int index;
  const DataCovidScreen({Key? key, this.index = 0}) : super(key: key);

  @override
  State<DataCovidScreen> createState() => _DataCovidScreenState();
}

class _DataCovidScreenState extends State<DataCovidScreen>
    with TickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: 2,
      initialIndex: widget.index,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>
          VaccinationBloc()..add(const LoadEvent()),
      child: BlocBuilder<VaccinationBloc, VaccinationState>(
          builder: (context, state) {

        Widget _title() {
          return Container(
            width: MediaQuery.of(context).size.width,
            color: primaryColor,
            height: 100.h,
            child: Container(
              margin: EdgeInsets.only(left: 15.w, top: 60.h),
              child: Text("Data covid of Vietnam",
                  style: kTextConfig.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: ScreenUtil().setSp(24.sp),
                    color: cwColor2,
                  )),
            ),
          );
        }

        Widget _tabWidget() {
          return Expanded(
              child: DefaultTabController(
                  length: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTabBar1(listTab: [
                        Tab(
                          child: Text('Cases Covid'),
                        ),
                        Tab(
                          child: Text('Vaccination'),
                        ),
                      ], tabController: controller),
                      Expanded(
                        child: TabBarView(
                          controller: controller,
                          children: [
                            CasesCovidScreen(),
                            CasesVaccineScreen(),
                          ],
                        ),
                      )
                    ],
                  )));
        }

        return Scaffold(
          body: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _title(),
              _tabWidget(),
            ],
          ),
        );
      }),
    );
  }
}




