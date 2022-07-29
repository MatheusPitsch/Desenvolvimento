import 'package:exersice/home_page.dart';
import 'package:exersice/otherer_page_1.dart';
import 'package:flutter/material.dart';

import '../page_not_found.dart';

var appRoutes = {
  HomePage.route: (context) => const HomePage(),
  OthererPage1.route: (context) => const OthererPage1(),
};

var onUnknownRoute = (context) {
  return MaterialPageRoute(builder: (context) {
    return const PageNotFound();
  });
};
