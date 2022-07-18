// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ContainerFunctionFooter extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isOpened;
  final Color colorBackground;

  const ContainerFunctionFooter({
    Key? key,
    required this.icon,
    required this.title,
    required this.isOpened,
    required this.colorBackground,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 150,
      width: 175,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.symmetric(
        vertical: 30,
        horizontal: 20,
      ),
      decoration: BoxDecoration(
          color: colorBackground,
          borderRadius: BorderRadius.circular(32),
          boxShadow: [
            BoxShadow(
              color: Colors.blueGrey.shade100,
              blurRadius: 10,
              spreadRadius: 3,
              offset: const Offset(4, 5),
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              Icon(
                icon,
                size: 33,
                color: Colors.white,
              ),
              const Icon(
                Icons.circle,
                size: 14,
                color: Color.fromARGB(255, 0, 110, 26),
              ),
            ],
          ),
          const SizedBox(height: 25),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(height: 7),
               Text(
                isOpened ? "Aberto" : "Fechado",
                style: const TextStyle(
                  fontSize: 11,
                  color: Colors.white70,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
