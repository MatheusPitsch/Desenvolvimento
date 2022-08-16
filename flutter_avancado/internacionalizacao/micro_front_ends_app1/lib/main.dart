import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:micro_app_home/app/micro_app_home_resolver.dart';
import 'package:micro_app_login/app/micro_app_login_resolver.dart';
import 'package:micro_app_login/app/pages/login_page.dart';
import 'package:product/app/micro_app_product_resolver.dart';

void main() {
  eventBus.on().listen(
    (event) {
      print(event);
    },
  );
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget with BaseApp {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    super.registerRoutes();
    return MaterialApp(
        title: 'Micro Frontends Simple Example',
        theme: ThemeData(
          primarySwatch: Colors.lime,
        ),
        initialRoute: "/login",
        navigatorKey: navigatorKey,
        onGenerateRoute: super.generateRoutes,
        debugShowCheckedModeBanner: false);
  }

  @override
  Map<String, WidgetBuilderArgs> get baseRoutes => {};

  @override
  List<MicroApp> get microApps => [
        MicroAppHomeResolver(),
        MicroAppLoginResolver(),
        MicroAppProductResolver(),
      ];
}
