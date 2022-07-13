import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../menu/menu.dart';
import '../profile/profile.dart';
import '../home/home_page.dart';

class BarPages extends StatelessWidget {
  const BarPages({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
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
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const Menu();
                  },
                ),
              );
            },
            icon: Icon(
              CupertinoIcons.line_horizontal_3,
              color: Colors.blueGrey.shade300,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const HomePage();
                  },
                ),
              );
            },
            icon: Icon(
              CupertinoIcons.home,
              color: Colors.blueGrey.shade300,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const Profile();
                  },
                ),
              );
            },
            icon: Icon(
              Icons.person,
              color: Colors.blueGrey.shade200,
            ),
          ),
        ],
      ),
    );
  }
}
