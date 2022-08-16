import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(
              "https://www.w3schools.com/css/img_forest.jpg",
              semanticLabel:
                  "Imagem com uma ponto no centro e arvores no fundo.",
            ),
                const SizedBox(
              height: 50,
            ),
            IconButton(
              onPressed: () {},
              tooltip: "Botão icone salver",
              icon: const Icon(
                Icons.save,
                size: 80,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Semantics(
              hint: "Botão Texto Não Salvar",
              child: InkWell(
                excludeFromSemantics: true,
                child: const Text("Não salvar"),
                onTap: () {},
              ),
            ),
                const SizedBox(
              height: 50,
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Salvar",
                style: TextStyle(color: Colors.pink),
              ),
            ),
                const SizedBox(
              height: 50,
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Não Salvar",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
