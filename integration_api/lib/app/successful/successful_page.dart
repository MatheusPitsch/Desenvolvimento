import 'package:flutter/material.dart';

import '../../widget/buttom_sing.dart';


class SuccessfulPage extends StatelessWidget {
  const SuccessfulPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade900,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 50, right: 80, left: 80),
          child: Column(
            children: [
              const Text(
                "Your resistration",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                "was successful",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 60),
              Icon(
                Icons.check_outlined,
                size: 250,
                color: Colors.deepPurple.shade400,
              ),
              const SizedBox(height: 20),
              const Text(
                "Your registration was succesful",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
              const Text(
                "and we have sent you",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
              const Text(
                "a confirmation receipt to your",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
              const Text(
                "email at:",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
              const Text(
                "maykondgraneman@gmail.com",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 50),
             ButtonSing(textButton:"SING IN"),
            ],
          ),
        ),
      ),
    );
  }
}
