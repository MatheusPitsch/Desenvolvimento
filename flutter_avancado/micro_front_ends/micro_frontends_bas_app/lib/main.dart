import 'package:core/app/base_app.dart';
import 'package:core/app/micro_core_utils.dart';
import 'package:core/app/microapp.dart';
import 'package:flutter/material.dart';
import 'package:micro_app_home/home.dart';
import 'package:micro_app_login/app/pages/login_page.dart';
import 'package:micro_app_login/login.dart';
import 'package:micro_app_products/products.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget with BaseApp {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    super.registerRoutes();
    eventBus.on().listen((event) {
      print(event);
    });

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Micro Drontends Simple Example',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        useMaterial3: true,
      ),
      initialRoute: '/login',
      navigatorKey: navigatorKey,
      onGenerateRoute: super.genereteRoute,
    );
  }

  @override
  Map<String, WidgertBuilderArgs> get baseRoutes => {};

  @override
  List<MicroApp> get microApps => [
        MicroAppLoginResolver(),
        MicroAppHomeResolver(),
        MicroAppProductsResolver(),
      ];
}
