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
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(title: 'Provider'),
      debugShowCheckedModeBanner: false,
    );
  }
}

final counterProvider = StateProvider<int>((ref) => 0);

class MyHomePage extends HookConsumerWidget {
  final String title;
  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider.state);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              counter.state.toString(),
              style: Theme.of(context).textTheme.headline4,
            ),
           const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                counter.state++;
              },
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
