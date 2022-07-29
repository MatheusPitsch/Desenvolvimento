import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_provider2/main.dart';

class OtherPage extends HookConsumerWidget {
  OtherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(nameProfile.state);
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Container(
        child: Text(
          name.state,style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
