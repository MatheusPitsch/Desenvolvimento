import 'package:flutter/material.dart';
import '../next_page/next_page.dart';
import 'widgets/body_home.dart';

void main() {
  runApp(
    const MaterialApp(
      title: "AppTreino",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AppTreino"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const NextPage();
                  },
                ),
              );
            },
            icon: const Icon(Icons.keyboard_arrow_right_outlined),
          ),
        ],
      ),
      body: const BodyHome(),
    );
  }
}
