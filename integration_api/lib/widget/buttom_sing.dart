// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:integration_api/app/successful/successful_page.dart';

class ButtonSing extends StatelessWidget {
  String textButton;
  bool? isCreateAccount;
  ButtonSing({
    Key? key,
    required this.textButton,
    this.isCreateAccount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: 250,
      child: ElevatedButton(
        onPressed: () { 
          isCreateAccount!? null : Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const SuccessfulPage(),
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(
          textButton,
          style: TextStyle(
            color: Colors.purple.shade900,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
