import 'package:flutter/material.dart';

import '../home_page.dart';
import '../page_not_found.dart';
import '../page_three.dart';
import '../page_two.dart';

var appRoutes = {
  MyHomePage.route: (context) => const MyHomePage(),
  PageTwo.route: (context) => const PageTwo(),
  PageThree.route: (context) => const PageThree(),
};

var onUnknownRoute = (context) {
  return MaterialPageRoute(
    builder: (context) {
      return const PageNotFound();
    },
  );
};
