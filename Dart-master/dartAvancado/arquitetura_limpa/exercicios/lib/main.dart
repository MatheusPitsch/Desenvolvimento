

import 'package:exercicios/core/get_it.dart';
import 'package:flutter/material.dart';

import 'app/presenter/ui/cell_phone_product.dart';

void main() {
  setupDependencies();
  runApp(
    MaterialApp(
      home: Scaffold(
        body: CellPhoneProduct(),        
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}
