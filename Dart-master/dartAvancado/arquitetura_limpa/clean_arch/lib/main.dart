import 'package:flutter/material.dart';

import 'app/presenter/ui/prducts_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Clean",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductsPage(),
    );
  }
}
