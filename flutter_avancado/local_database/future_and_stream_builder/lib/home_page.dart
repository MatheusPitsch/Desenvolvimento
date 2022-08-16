import 'dart:async';

import 'package:flutter/material.dart';
import 'package:future_and_stream_builder/home_repository.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _repository = HomeRepository();
  final StreamController<List<String>> streamController = StreamController();
  late Future<List<String>> names;

  @override
  void initState() {
    names = _repository.getAllNames();
    super.initState();
  }

  void getAllNames() async {
    List<String> names = await _repository.getAllNames();
    streamController.add(names);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: StreamBuilder(
          stream: _repository.timedCounter(const Duration(milliseconds: 1), 1000000000000000000),
          builder: (context, AsyncSnapshot<int> snapshot) {
            if (snapshot.hasData) {
              return Center(
                child: Text(
                  "${snapshot.data}",
                  style: const TextStyle(fontSize: 15),
                ),
              );
            }
            return const CircularProgressIndicator();
          },
        ),
        /* StreamBuilder(
          stream: streamController.stream,
          builder: (context, AsyncSnapshot<List<String>> snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data!.first);
            }
            return const CircularProgressIndicator();
          },
        ),*/
      ),
    );
  }
}
