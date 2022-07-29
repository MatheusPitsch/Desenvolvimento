import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'home_page_controller.dart';
import 'widgets/fruit_button.dart';

final favoritesProvaider = ChangeNotifierProvider(
  ((ref) => FavoritesController()),
);

class MyHomePage extends HookConsumerWidget {
  const MyHomePage({
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
          children: const <Widget>[
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
