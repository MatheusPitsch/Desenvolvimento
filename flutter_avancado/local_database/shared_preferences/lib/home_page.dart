import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _prefs = SharedPreferences.getInstance();

  final titleController = TextEditingController();

  saveInfoStorage() async {
    final myPrefs = await _prefs;
    myPrefs.setString("title", titleController.text);
    setState(() {});
  }

  Future<String> getInfoStorage() async {
    return _prefs.then((prefs) => prefs.getString("title") ?? "");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shared Preferencs'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              controller: titleController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Digite Algo"),
            ),
          ),
          FutureBuilder(
            future: getInfoStorage(),
            builder: (context, AsyncSnapshot<String> snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data!);
              }
              return const CircularProgressIndicator();
            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          saveInfoStorage();
        },
        child: const Icon(Icons.save),
      ),
    );
  }
}
