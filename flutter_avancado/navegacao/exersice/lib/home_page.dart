import 'package:exersice/otherer_page_1.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const route = "/home-page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('test'),
      ),
      body: ElevatedButton(
        child: Text("Olá"),
        onPressed: () {
          Navigator.of(context).pushNamed(OthererPage1.route);
        },
      ),
    );
  }
}
