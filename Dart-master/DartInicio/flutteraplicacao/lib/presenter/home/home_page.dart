// import 'dart:html';

// import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   bool isOn = false;

//   // void changeIsOn() {
//   //   isOn = !isOn;
//   //   setState(() {});
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               height: 150,
//               width: 250,
//               decoration: BoxDecoration(
//                   color: isOn ? const Color.fromARGB(255, 255, 0, 0) : Colors.white,
//                   borderRadius: isOn ? BorderRadius.circular(20) : null),
//             ),
//             TextButton(
//               onPressed: () {
//                 changeIsOn();
//               },
//               child: const Text(
//                 "Ligar/Desligar",
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final userController = TextEditingController();
  final senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          children: [
            const Icon(
              Icons.person,
              size: 80,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.05),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                controller: userController,
                // keyboardType: TextInputType.datetime,
                decoration: const InputDecoration(
                  labelText: "Seu nome",
                  // hintText: "Seu name"
                  border: InputBorder.none,
                ),
              ),
            ),
            TextField(
              controller: senhaController,
              // keyboardType: TextInputType.datetime,
              decoration: const InputDecoration(labelText: "Sua senha"
                  // hintText: "Seu name"
                  ),
            ),
            MaterialButton(
              onPressed: () {
                print(userController.text);
                print(senhaController.text);
              },
              child: const Text("Login"),
            )
          ],
        ),
      ),
    );
  }
}
