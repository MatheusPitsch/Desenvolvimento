import 'package:core/core.dart';
import 'package:event_bus/event_bus.dart';
import 'package:flutter/material.dart';

EventBus eventBus = EventBus();

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: ButtonDefaultWidget(
          title: 'Ir para Home',
          onPressed: () {
            eventBus.fire('Luan KKKKKKKKK');
            navigatorKey.currentState?.pushNamed('/home');
          },
        ),
      ),
    );
  }
}
