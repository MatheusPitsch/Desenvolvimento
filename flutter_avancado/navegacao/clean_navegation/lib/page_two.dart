import 'package:flutter/material.dart';

import 'page_three.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);
  static const route = "/page-two";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pagina 2"),
      ),
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 0.5,
          child: ElevatedButton(
            child: const Text("Pagina 3"),
            onPressed: () {
              Navigator.of(context).pushNamed(PageThree.route,
                  arguments: "Sou da Home e venho em paz");
            },
          ),
        ),
      ),
    );
  }
}
