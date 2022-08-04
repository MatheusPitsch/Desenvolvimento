import 'package:flutter/material.dart';
import 'package:get_api_movies/movies_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movies Page',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const MoviesPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
