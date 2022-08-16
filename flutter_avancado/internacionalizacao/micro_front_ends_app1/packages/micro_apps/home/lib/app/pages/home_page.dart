import 'package:core/core.dart';
import 'package:desing_system/desing_system.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: ButtonDefaultWidget(
          title: "Product",
          onPressed: () {
            navigatorKey.currentState?.pushNamed("/product");
          },
        ),
      ),
    );
  }
}
