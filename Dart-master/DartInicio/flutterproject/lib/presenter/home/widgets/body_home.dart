import 'package:flutter/material.dart';
import 'card_weather_home.dart';
import 'container_lamp_home.dart';
import 'list_text_home.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const CardWeatherHome(),
          const SizedBox(height: 20),
          const ListTextHorizontal(),
          const SizedBox(height: 20),
          Wrap(
            children: const [
              ContainerFunctionFooter(
                icon: Icons.e_mobiledata,
                colorBackground: Colors.amber,
                title: "Lamp",
                isOpened: true,
              ),
              ContainerFunctionFooter(
                icon: Icons.g_mobiledata_sharp,
                colorBackground: Colors.pink,
                title: "Telefone",
                isOpened: true,
              ),
              ContainerFunctionFooter(
                icon: Icons.cable,
                colorBackground: Colors.deepOrange,
                title: "Carro",
                isOpened: true,
              ),
              ContainerFunctionFooter(
                icon: Icons.accessible_forward_outlined,
                colorBackground: Colors.blueAccent,
                title: "Casa",
                isOpened: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
