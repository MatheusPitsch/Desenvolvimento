// import 'package:flutter/material.dart';
// import 'presenter/home/home_page.dart';

// void main() {
//   runApp(
//     const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "Mudando estado",
//       home: HomePage(),
//     ),
//   );
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutteraplicacao/presenter/home/home_page.dart';
import 'package:flutteraplicacao/presenter/splash/splash_page.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Usando Cupertino",
      home: SplashPage(),
    ),
  );
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoButton(
              child: const Text(
                "Salvar",
              ),
              onPressed: () {},
            ),
            CupertinoButton.filled(
              child: const Text(
                "Salvar",
              ),
              onPressed: () {},
            ),
            const SizedBox(
              height: 25,
            ),
            const CupertinoActivityIndicator(),
          ],
        ),
      ),
    );
  }
}
