import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/bar_pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(                
                margin: const EdgeInsets.symmetric(vertical: 35),
                height: 150,
                width: 350,
                // ignore: sort_child_properties_last                
                decoration: BoxDecoration(                  
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueGrey.shade100,
                      blurRadius: 10,
                      spreadRadius: 10,
                      offset: const Offset(0, -3),
                    ),
                  ],
                ),                
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BarPages(),
    );
  }
}
