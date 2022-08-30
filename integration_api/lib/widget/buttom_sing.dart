// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

class ButtonSing extends StatelessWidget {
  String textButton;

  dynamic onPressed;

  bool? isCreateAccount;
  ButtonSing({
    Key? key,
    required this.textButton,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: 250,
      child: ElevatedButton(
        onPressed: onPressed,
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
