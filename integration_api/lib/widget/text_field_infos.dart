// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TextFieldInfos extends StatelessWidget {
  String textFieldInfos;
  final TextEditingController controller;
  TextFieldInfos({
    Key? key,
    required this.textFieldInfos,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: textFieldInfos,
        filled: true,
        fillColor: Colors.white,
        prefixIcon: const Icon(Icons.email),
        border: const OutlineInputBorder(),
      ),
    );
  }
}
