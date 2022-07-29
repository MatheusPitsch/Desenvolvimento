import 'package:flutter/material.dart';

import 'page_two.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

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
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => PageTwo(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
