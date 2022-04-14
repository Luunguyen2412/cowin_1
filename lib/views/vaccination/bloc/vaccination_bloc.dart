import 'package:cowin_1/models/provinces.dart';
import 'package:cowin_1/services/services_api.dart';
import 'package:cowin_1/views/vaccination/bloc/vaccination_event.dart';
import 'package:cowin_1/views/vaccination/bloc/vaccination_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VaccinationBloc extends Bloc<VaccinationEvent, VaccinationState> {
  List<Province> listProvince = [];
  List<Province> listSearchProvince = [];
  bool isShowVacination = false;
  VaccinationBloc() : super(const VaccinationState()) {
    on<LoadEvent>(onLoadData);
    on<RefeshEvent>(onReFesh);
  }

  void onLoadData(LoadEvent event, Emitter<VaccinationState> emit) async {
    emit(const LoadingState());
    listProvince = await Api.getPatientProvinces();
    listSearchProvince.addAll(listProvince);
    emit(const LoadingSucessState());
  }

  void onReFesh(RefeshEvent event, Emitter<VaccinationState> emit) async {
    emit(const LoadingState());
    listProvince = await Api.getPatientProvinces();
    listSearchProvince.addAll(listProvince);
    emit(const LoadingSucessState());
  }

  void onVaccineView(
      ChangeVaccinViewEvent event, Emitter<VaccinationState> emit) async {
    emit(const LoadingState());
    listProvince = await Api.getPatientProvinces();
    isShowVacination = event.isShowVaccin;
    emit(ChangeVaccinViewState(isShowVacination));
  }
}
