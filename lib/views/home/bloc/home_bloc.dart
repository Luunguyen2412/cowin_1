import 'package:cowin_1/models/sum_patient_models.dart';
import 'package:cowin_1/services/services_api.dart';
import 'package:cowin_1/views/home/bloc/home_state.dart';
import 'package:cowin_1/views/home/bloc/home_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  SummPatient? summPatient;

  HomeBloc() : super(const HomeState()) {
    on<LoadEvent>(onLoadData);
  }

  void onLoadData(HomeEvent event, Emitter<HomeState> emit) async {
    emit(const LoadingState());
    summPatient = await Api.getSumPatient();
    emit(const LoadingSucessState());
  }
}
