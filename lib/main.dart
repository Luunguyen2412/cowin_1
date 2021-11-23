import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'app.dart';
import 'view_models/app/app_bloc_observer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Provider.debugCheckInvalidValueType = null;
  print('[main] ============== main.dart START ==============');

  /// enable network traffic logging
  HttpClient.enableTimelineLogging = false;
  BlocOverrides.runZoned(
    () {
      runApp(App());
    },
    blocObserver: AppBlocObserver(),
  );
}
