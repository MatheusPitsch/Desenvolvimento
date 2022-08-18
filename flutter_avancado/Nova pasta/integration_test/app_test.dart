import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ideast/main.dart';
import 'package:ideast/screens/auth_screens/signup_screen.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Testando as nossas paginas com integration', () {
    testWidgets('Criando uma conta', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      await tester.pumpAndSettle();

      sleep(const Duration(seconds: 3));

      await tester.tap(find.byKey(const Key('buttoon_singup_inlogin')));
      await tester.pumpAndSettle();

      sleep(const Duration(seconds: 3));
      expect(find.byType(SignUpScreen), findsOneWidget);

      // ignore: lines_longer_than_80_chars
      await tester.enterText(
          find.byKey(const Key('_emailController')), 'mttheus@h');
      await tester.pump();
      sleep(const Duration(seconds: 3));

      // ignore: lines_longer_than_80_chars
      await tester.enterText(
          find.byKey(const Key('_passwordController')), 'aaaaaaaaaaa');
      await tester.pump();
      sleep(const Duration(seconds: 3));

      // ignore: lines_longer_than_80_chars
      await tester.enterText(
          find.byKey(const Key('_confirmPasswordController')), 'aaaaaaaaaaa');
      await tester.pump();
      sleep(const Duration(seconds: 3));

      await tester.tap(find.byKey(const Key('Button_to_home')));
      await tester.pumpAndSettle();

      sleep(const Duration(seconds: 3));
    });

    testWidgets('fazer login', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      await tester.pumpAndSettle();

      await tester.enterText(
          find.byKey(const ValueKey('emailLoginField')), 'mttheus');
      await tester.pump();
      sleep(const Duration(seconds: 3));

      await tester.enterText(
          find.byKey(const ValueKey('passwordLoginField')), 'aaaaaaaaaaa');
      await tester.pump();
      sleep(const Duration(seconds: 3));
    });
  });
}
