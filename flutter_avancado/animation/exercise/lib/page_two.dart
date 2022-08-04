import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  PageTwo({Key? key}) : super(key: key);
  bool altena = false;

  void alternable() async {
    Future.delayed(
      const Duration(seconds: 1),
    );
    altena = false;
    print("ok");
  }

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const AnimatedDefaultTextStyle(
            style: TextStyle(color: Colors.white, fontSize: 50),
            duration: Duration(seconds: 1),
            child: Text("Bem vindo"),
          ),
          AnimatedContainer(
            duration: const Duration(seconds: 1),
          ),
        ],
      ),
    );
  }
}
