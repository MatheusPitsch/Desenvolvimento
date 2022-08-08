import 'package:flutter/material.dart';
import 'package:local_storage/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Local Storage',
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
