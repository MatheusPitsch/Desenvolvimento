import 'package:flutter/material.dart';
import '../widgets/bar_pages.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(
                  const Size(300, 75),
                ),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.grey.shade300),
              ),
              child: const Text(
                'Marcar horario',
                style: TextStyle(color: Colors.black,
                fontSize: 20),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BarPages(),
    );
  }
}
