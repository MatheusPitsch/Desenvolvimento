import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pointers"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Listener(
              child: Container(
                height: 200,
                width: 200,
                color: Colors.pink,
              ),
              onPointerDown: (event) {
                print("Donw $event");
              },
              onPointerUp: (event) {
                print("Up $event");
              },
              onPointerMove: (event) {
                print("Move $event");
              },
            ),
            SizedBox(height: 25),
            GestureDetector(
              onLongPress: () {
                print("Fui clicado por longo tempo");
              },
              onDoubleTap: () {
                print("Fui clicado 2x");
              },
              onTap: () {
                print("Fui clicado");
              },
              child: Container(
                height: 200,
                width: 200,
                color: Colors.pink,
              ),
            )
          ],
        ),
      ),
    );
  }
}
