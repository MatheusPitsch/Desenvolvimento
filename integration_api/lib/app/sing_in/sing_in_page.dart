import 'package:flutter/material.dart';

import '../../widget/buttom_sing.dart';
import '../../widget/button_text.dart';
import '../../widget/row_icon.dart';
import '../../widget/text_field_infos.dart';

class SingInPage extends StatelessWidget {
  const SingInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade900,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 20, bottom: 30),
              child: const Text(
                "Sing In",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            const RowIcon(),
            const SizedBox(height: 60),
            Text(
              "or use your email account",
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey.shade500,
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: Column(
                children: [
                  TextFieldInfos(
                    textFieldInfos: "Email",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFieldInfos(
                    textFieldInfos: "Password",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Forgot your password?",
              style: TextStyle(
                color: Colors.grey.shade500,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 60),
            ButtonSing(textButton: "SING IN", isCreateAccount: true),
            const SizedBox(height: 60),
            const Text(
              "Enter your personal datails ",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            const Text(
              "and start journey with us",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 20),
            ButtonText(textButton: "SING UP", isCreateAccount: false),
          ],
        ),
      ),
    );
  }
}
