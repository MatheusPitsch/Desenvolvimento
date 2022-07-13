import 'package:flutter/material.dart';
import 'package:flutterproject/core/app_assets.dart';

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Image.asset(imgSocial),
          
        ],
      ),
    );
  }
}
