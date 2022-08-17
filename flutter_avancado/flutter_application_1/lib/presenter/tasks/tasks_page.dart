import 'package:flutter/material.dart';
import 'package:flutter_application_1/presenter/tasks/tasks_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TasksPage extends HookConsumerWidget {
  const TasksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nameUser = ref.watch(nameUserProvider);
    final nameState = ref.watch(nameStateProvider.state).state;

    return Scaffold(
      appBar: AppBar(
        title: const Text("About Provider"),
      ),
      body: Center(
        child: Text("Olá $nameState"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(nameStateProvider.notifier).state = "Jose";
        },
        child: const Icon(
          Icons.change_circle,
          size: 50,
        ),
      ),
    );
  }
}
