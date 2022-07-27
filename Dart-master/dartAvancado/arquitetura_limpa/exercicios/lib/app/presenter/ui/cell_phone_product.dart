import 'package:exercicios/app/presenter/coontoller/cell_phone_controller.dart';
import 'package:exercicios/core/get_it.dart';
import 'package:flutter/material.dart';

class CellPhoneProduct extends StatelessWidget {
  CellPhoneProduct({Key? key}) : super(key: key);

  final controller = getIt.get<CellPhoneController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text(controller.product!.brand),
          ],
        ),
      ),
    );
  }
}
