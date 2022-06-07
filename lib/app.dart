import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:cowin_1/common/config/colors_config.dart';
import 'package:cowin_1/models/news_model.dart';
import 'package:cowin_1/view_models/app/app_provider.dart';
import 'package:cowin_1/view_models/login/google_login_controller.dart';
import 'package:cowin_1/views/main_screen.dart';
import 'package:cowin_1/views/news/news_remake/news_detail_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
              ChangeNotifierProvider(create: (_) => GoogleSignInController()),
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
                    home: AnimatedSplashScreen(
                      splash: Image.asset(
                        'assets/images/Splash.png',
                      ),
                      splashIconSize: double.maxFinite,
                      backgroundColor: cwColor1,
                      nextScreen: MainScreen(),
                      splashTransition: SplashTransition.fadeTransition,
                    ),
                    onGenerateRoute: AppRoutes.onGenerateRoute,
                    initialRoute: "/",
                  );
                }),
          );
        },
      ),
    );
  }
}

class AppRoutes {
  static Route onGenerateRoute(RouteSettings settings) {
    debugPrint('onGenerateRoute: ${settings.name}');
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => MainScreen(),
            settings: RouteSettings(name: MainScreen.routeName));
      case NewsDetailPage.routeName:
        return MaterialPageRoute(
          builder: (_) => NewsDetailPage(
            newsModel: settings.arguments as NewsModel,
          ),
          settings: RouteSettings(
              name: NewsDetailPage.routeName, arguments: settings.arguments),
        );
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('Something went wrong!'),
        ),
      ),
    );
  }
}
