import 'package:cowin_1/models/news_model.dart';
import 'package:cowin_1/services/services_api.dart';
import 'package:cowin_1/views/news/news_remake/news_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'news_event.dart';
import 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  List<NewsModel> lstNews = [];
  NewsBloc() : super(const NewsState()) {
    on<LoadEvent>(onLoadData);
    on<RefeshEvent>(onRefesh);
    on<OnTapItemEvent>(onTapItem);
  }

  void onLoadData(LoadEvent event, Emitter<NewsState> emit) async {
    emit(const LoadingState());
    lstNews = await Api.getListCovidNews();
    if (lstNews.isEmpty) {
      emit(const LoadingSucessState());
      return;
    }
    emit(const LoadingSucessState());
  }

  Future<void> onRefesh(RefeshEvent event, Emitter<NewsState> emit) async {
    lstNews.clear();
    emit(const LoadingState());
    lstNews = await Api.getListCovidNews();
    if (lstNews.isEmpty) {
      emit(const LoadingSucessState());
      return;
    }
    emit(const LoadingSucessState());
  }

  void onTapItem(OnTapItemEvent event, Emitter<NewsState> emit) async {
    Navigator.pushNamed(event.context, NewsDetailPage.routeName,
        arguments: event.newsModel);
  }
}
