import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final textController = TextEditingController();

  final storage = LocalStorage("data.json");

  saveInfoStorage() async {
    await storage.setItem("title", textController.text);
    setState(() {});
  }

  getInfoStorage() {
    storage.getItem("title");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Local Storage'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              controller: textController,
              decoration: const InputDecoration(
                hintText: "Escreva alguma coisa",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          FutureBuilder(
            future: storage.ready,
            builder: (context, snapshot) {
              if (snapshot.data == true) {
                var title = storage.getItem("title");
                return Text(title ?? "Não foi escrito nada");
              }
              return const CircularProgressIndicator();
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (textController.text.isEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Está vazio')),
            );
            return;
          }
          saveInfoStorage();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
