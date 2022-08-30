import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../api/user_model.dart';
import '../successful/successful_page.dart';
import '../../widget/row_icon.dart';

import '../../widget/buttom_sing.dart';
import '../../widget/button_text.dart';
import '../../widget/text_field_infos.dart';

// ignore: must_be_immutable
class CreateAccountPage extends StatelessWidget {
  CreateAccountPage({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwpordController = TextEditingController();
  TextEditingController confirmPasswpordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Future registration(UserModel user) async {
      Dio dio = Dio();
      await dio.post("http://192.168.0.96/api/user", data: user.toMap());
    }

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
                    controller: nameController,
                    textFieldInfos: "Name",
                  ),
                  TextFieldInfos(
                    controller: emailController,
                    textFieldInfos: "Email",
                  ),
                  TextFieldInfos(
                    controller: passwpordController,
                    textFieldInfos: "Password",
                  ),
                  TextFieldInfos(
                    controller: confirmPasswpordController,
                    textFieldInfos: "Confirm Password",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            ButtonSing(
              onPressed: () {
                UserModel userModel = UserModel(
                  userName: nameController.text,
                  email: emailController.text,
                  password: passwpordController.text,
                );
                registration(userModel);
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SuccessfulPage(),
                  ),
                );
              },
              textButton: "SING UP",
            ),
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
