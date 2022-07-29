import 'page_two.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  static const route = "/";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 0.5,
          child: ElevatedButton(
            child: const Text("Pagina 2"),
            onPressed: () {
              Navigator.of(context).pushNamed("as",
                  arguments: "Sou da Home e venho em paz");
            },
          ),
        ),
      ),
    );
  }
}
