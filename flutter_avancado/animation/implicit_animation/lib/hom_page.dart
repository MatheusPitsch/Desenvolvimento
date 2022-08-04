import 'dart:math';

import 'package:flutter/material.dart';

class HomPage extends StatefulWidget {
  const HomPage({Key? key}) : super(key: key);

  @override
  State<HomPage> createState() => _HomPageState();
}

class _HomPageState extends State<HomPage> {
  bool isClicked = false;
  bool isClickedPoints = false;
  int points = 0;

  void changeCliked() {
    isClicked = !isClicked;
    setState(() {});
  }

  void clickPoint() {
    isClickedPoints = !isClickedPoints;
    points++;
    print("$points Pontos");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Implicit Animation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            AnimatedContainer(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(Random().nextInt(100).toDouble()),
                color: Color.fromARGB(255, Random().nextInt(255),
                    Random().nextInt(255), Random().nextInt(255)),
              ),
              onEnd: changeCliked,
              duration: const Duration(seconds: 2),
              height: isClicked
                  ? Random().nextInt(100).toDouble()
                  : Random().nextInt(100).toDouble(),
              width: isClicked
                  ? Random().nextInt(200).toDouble()
                  : Random().nextInt(200).toDouble(),
            ),
            ElevatedButton(
              onPressed: () {
                changeCliked();
              },
              child: const Text("Começar"),
            ),
            ElevatedButton(
              onPressed: () {
                clickPoint();
              },
              child: const Text("Clique em mim se for capaz"),
            ),

            const Spacer(),
            AnimatedContainer(
              onEnd: changeCliked,
              duration: const Duration(seconds: 2),
              height: 10,
              width: Random().nextInt(50).toDouble(),
              color: Color.fromARGB(
                255,
                Random().nextInt(255),
                Random().nextInt(255),
                Random().nextInt(255),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
