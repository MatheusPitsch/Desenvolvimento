import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final nameUser = Provider((ref) => "Pitsch");
final counterProvaider = StateProvider((ref) => 0);
final counterUpProvider =
    StateNotifierProvider<CounterNotifier, int>((ref) => CounterNotifier());

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nameUserWatch = ref.watch(nameUser);
    final counter = ref.watch(counterProvaider.state);
    final counterUp = ref.watch(counterUpProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('State Notifier'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              nameUserWatch,
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
            Text(
              counterUp.toString(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterUpProvider.notifier).increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class CounterNotifier extends StateNotifier<int> {
  CounterNotifier() : super(0);

  void increment() {
    state++;
  }
}
