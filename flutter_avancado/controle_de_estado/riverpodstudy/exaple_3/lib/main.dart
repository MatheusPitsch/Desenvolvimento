import 'package:flutter/material.dart';

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

final favoritesProvaider = ChangeNotifierProvider(((ref) => Favorites()));

class MyHomePage extends HookConsumerWidget {
  MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favorite = ref.watch(favoritesProvaider);
    return Scaffold(
      appBar: AppBar(
        title: Text("Minha fruta favorita é ${favorite.fruit}"),
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
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () {
        ref.watch(favoritesProvaider).changFruit(fruit);
      },
      child: Text(fruit),
    );
  }
}

class Favorites extends ChangeNotifier {
  String fruit = "unknow";

  void changFruit(String newFruit) {
    fruit = newFruit;

    notifyListeners();
  }
}
