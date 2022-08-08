import 'package:flutter/material.dart';
import 'package:project_sqflite/database_helper.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final dbHelper = DatabaseHelper.instance;
  final textController = TextEditingController();

  Future<String> getText() async {
    return await dbHelper.getText();
  }

  Future saveText() async {
    if (textController.text.isNotEmpty) {
      var response = await dbHelper.insertText(textController.text);
      if (response == 0) {
        print("deu errado");
      } else {
        print("Deu certo");
      }
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sqflite'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: textController,
              decoration: const InputDecoration(
                hintText: "Escreva aqui",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          FutureBuilder(
            future: getText(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data);
              }
              return const CircularProgressIndicator();
            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await saveText();
        },
        child: const Icon(Icons.save_alt),
      ),
    );
  }
}
