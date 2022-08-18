import 'package:flutter/material.dart';

import 'second_page.dart';

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
            ElevatedButton(
              key: const ValueKey("ButtonCons"),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SecondPage(),
                  ),
                );
                debugPrint("Consultando...");
              },
              child: const Text("Consulta"),
            ),
            InkWell(
              key: const ValueKey("ButtonAtt"),
              onTap: () {
                debugPrint("Atualizando...");
              },
              child: const Text("Atualizar"),
            ),
            MaterialButton(
              key: const ValueKey("ButtonExc"),
              onPressed: () {
                debugPrint("Excluindo...");
              },
              child: const Text("Excluir"),
            ),
            TextButton(
              key: const ValueKey("ButtonSlv"),
              onPressed: () {
                debugPrint("Salvando...");
              },
              child: const Text("Salvar"),
            ),
          ],
        ),
      ),
    );
  }
}
