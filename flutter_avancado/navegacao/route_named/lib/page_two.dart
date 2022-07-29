

import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  PageTwo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final infotext = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(infotext.toString()),
      ),
      body: Container(),
    );
  }
}
