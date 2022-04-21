import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/common/config/texts_config.dart';
import 'package:cowin_1/views/vaccination/bloc/vaccination_bloc.dart';
import 'package:cowin_1/views/vaccination/bloc/vaccination_event.dart';
import 'package:cowin_1/views/vaccination/bloc/vaccination_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:intl/intl.dart';

class CasesVaccineScreen extends StatefulWidget {
  const CasesVaccineScreen({Key? key}) : super(key: key);

  @override
  State<CasesVaccineScreen> createState() => _CasesVaccineScreenState();
}

class _CasesVaccineScreenState extends State<CasesVaccineScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>
          VaccinationBloc()..add(const LoadEvent()),
      child: BlocBuilder<VaccinationBloc, VaccinationState>(
          builder: (context, state) {
        final bloc = BlocProvider.of<VaccinationBloc>(context);

        Widget _body() {
          Widget _loadingWidget() {
            return Center(
                child: SizedBox(
                    height: 25,
                    width: 25,
                    child: SpinKitFadingFour(color: primaryColor, size: 24.0)));
          }

          Widget _titleListWidget() {
            Text ___textTitle(String txt) => Text(txt,
                style: kTextConfig.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: ScreenUtil().setSp(20.sp),
                  color: cwColor14,
                ));

            return Row(
              children: [
                Expanded(flex: 1, child: ___textTitle("City")),
                const SizedBox(width: 8.0),
                Expanded(flex: 1, child: ___textTitle("1st injec")),
                const SizedBox(width: 8.0),
                Expanded(flex: 1, child: ___textTitle("2nd injecs")),
              ],
            );
          }

          Widget _listDataWidget() {
            return Expanded(
              child: bloc.listSearchProvince.isEmpty
                  ? Center(
                      child: Text('Không có dữ liệu'),
                    )
                  : ListView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      padding: const EdgeInsets.only(bottom: 20),
                      children: bloc.listSearchProvince.map((e) {
                        return Container(
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 1, color: Colors.black12))),
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            children: [
                              Expanded(child: Text(e.title!)), // tên tỉnh thành
                              SizedBox(width: 8),
                              Expanded(
                                child: Text(NumberFormat.decimalPattern().format(
                                    e.onevaccine!)), // tổng vaccine lần thứ 1
                              ),
                              SizedBox(width: 8),
                              Expanded(
                                child: Text(NumberFormat.decimalPattern().format(
                                    e.donevaccine!)), // tổng vaccine lần thứ 2
                              ),
                            ],
                          ),
                        );
                      }).toList()),
            );
          }

          return Expanded(
              child: state is LoadingState
                  ? _loadingWidget()
                  : Container(
                      padding: const EdgeInsets.only(
                          left: 12, right: 12, bottom: 12, top: 16),
                      child: Column(
                        children: [
                          _titleListWidget(),
                          SizedBox(height: 8),
                          _listDataWidget(),
                        ],
                      ),
                    ));
        }

        return Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _body(),
            ],
          ),
        );
      }),
    );
  }
}
