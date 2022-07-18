import 'package:flutter/material.dart';

import '../widgets/bar_pages.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(
                vertical: 40,
              ),
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.blueGrey.shade200,
                borderRadius: BorderRadius.circular(
                  100,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blueGrey.shade100,
                    blurRadius: 10,
                    spreadRadius: 10,
                  ),
                ],
              ),
              child: const Center(
                child: Text(
                  "Sua Foto",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: "coolvetica",
                      fontSize: 20),
                ),
              ),
            ),
          ),
          const Center(
            child: Text(
              "Pitsch",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 3,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white60,
              boxShadow: [
                BoxShadow(
                  color: Colors.blueGrey,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const Text("Nome:"),
          Container(
            height: 45,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blueGrey.shade100,
              borderRadius: BorderRadius.circular(
                150,
              ),
            ),
            child: const Center(
              child: Text(
                "Matheus Pitsch",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text("Ultima data que cortou o cabelo:"),
          Container(
            height: 45,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blueGrey.shade100,
              borderRadius: BorderRadius.circular(
                150,
              ),
            ),
            child: const Center(
              child: Text(
                "11/07/2022",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BarPages(),
    );
  }
}
