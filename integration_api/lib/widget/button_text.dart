// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:integration_api/app/create_account/create_account_page.dart';

class ButtonText extends StatelessWidget {
  String textButton;
  bool? isCreateAccount;
  ButtonText({
    Key? key,
    required this.textButton,
    this.isCreateAccount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isCreateAccount!
            ? null
            : Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => CreateAccountPage(),
              ));
      },
      child: Text(
        textButton,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
