import 'package:flutter/material.dart';
import 'package:integration_api/widget/row_icon.dart';

import '../../widget/buttom_sing.dart';
import '../../widget/button_text.dart';
import '../../widget/text_field_infos.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({Key? key}) : super(key: key);

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
                "Create Account",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            const RowIcon(),
            const SizedBox(height: 30),
            Text(
              "or use your email for registraition",
              style: TextStyle(
                fontSize: 17,
                color: Colors.grey.shade500,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: Column(
                children: [
                  TextFieldInfos(
                    textFieldInfos: "Name",
                  ),
                  TextFieldInfos(
                    textFieldInfos: "Email",
                  ),
                  TextFieldInfos(
                    textFieldInfos: "Password",
                  ),TextFieldInfos(
                    textFieldInfos: "Confirm Password",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            ButtonSing(textButton: "SING UP", isCreateAccount: false),
            const SizedBox(height: 40),
            const Text(
              "To Keep connected with us please",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            const Text(
              "login with your personal info",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 20),
            ButtonText(textButton: "SING IN", isCreateAccount: true),
          ],
        ),
      ),
    );
  }
}
