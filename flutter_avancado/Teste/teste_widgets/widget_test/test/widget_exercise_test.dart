import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:widget_test/home_page.dart';
import 'package:widget_test/second_page.dart';

void main() {
  testWidgets("Verificar se existe o titulo", (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: HomePage()));

    // await tester.tap(find.text("Consulta"));
    // await tester.tap(find.byKey(const Key('ButtonCons')));

    // await tester.tap(find.text("Salvar"));
    // await tester.tap(find.byKey(const Key("ButtonSlv")));

    tester.printToConsole('Clicando no botão que ira para outra tela');
    await tester.tap(find.byKey(const Key("ButtonCons")));

    tester.printToConsole("Esperando o flutter terminar de renderizar tudo");
    await tester.pumpAndSettle();

    tester.printToConsole("Verificando se chegou na segunda page");
    expect(find.byType(SecondPage), findsOneWidget);
  });
}
