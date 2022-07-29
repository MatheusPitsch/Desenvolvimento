import 'core/app_routes.dart';

import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      initialRoute: HomePage.route,
      routes: appRoutes,
      onUnknownRoute: onUnknownRoute,
      debugShowCheckedModeBanner: false,
    ),
  );
}
