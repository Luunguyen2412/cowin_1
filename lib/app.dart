import 'package:cowin_1/view_models/navigation.dart';
import 'package:cowin_1/view_models/app/app_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {

  AppProvider _app = AppProvider();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppProvider>(
      create: (_) => _app,
      child: Consumer<AppProvider>(
        builder: (context, value, child) {

          return MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (_) => AppProvider()),
            ],
            child: ScreenUtilInit(
                designSize: Size(414, 896),
                builder: () {
                  return MaterialApp(
                    debugShowCheckedModeBanner: false,
                    locale: Locale("vi", ""),
                    localizationsDelegates: const [
                      GlobalMaterialLocalizations.delegate,
                      GlobalWidgetsLocalizations.delegate,
                      GlobalCupertinoLocalizations.delegate,
                      DefaultCupertinoLocalizations.delegate,
                    ],
                    home: NavigationScreen(),
                  );
                }),
          );
        },
      ),
    );
  }
}
