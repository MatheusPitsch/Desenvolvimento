import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

final fruitProvaider = StateProvider<String>(((ref) => "unkown"));

class MyHomePage extends HookConsumerWidget {
  MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fruit = ref.watch(fruitProvaider.state);
    return Scaffold(
      appBar: AppBar(
        title: Text("Minha fruta favorita é ${fruit.state}"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FruitButton("Maracuja"),
            FruitButton("Maça"),
            FruitButton("Banana"),
            FruitButton("Kiwi"),
            FruitButton("Morango"),
          ],
        ),
      ),
    );
  }
}

class FruitButton extends HookConsumerWidget {
  final String fruit;

  const FruitButton(this.fruit, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return ElevatedButton(
      onPressed: () {
        ref.watch(fruitProvaider.state).state = fruit;
      },
      child: Text(fruit),
    );
  }
}
