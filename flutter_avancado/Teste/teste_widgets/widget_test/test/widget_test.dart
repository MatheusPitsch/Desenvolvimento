import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:widget_test/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    
    //É tipo o runApp que fica dentro de lib
    await tester.pumpWidget(const MyApp());
    //Expect sempre será usado para testar se algo está vindo no velor certo.

    //Find é do tipo Finder,ele é usado para encontrar widgets atraves de propiedades

    //Findsonewidget é  um Matcher, ele é usado para testar se foi encontrado somente 1 widget
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    //Tester é usado para muitas coisas, como clicar em botão, inserir textos, usar o .pumpWidget() e etc. 

    await tester.tap(find.byIcon(Icons.add));

    // O .pump é usado para ativar um frame depois de determinada duraão, normalmente usad depois que fazemos
    //uma ação que necessita esperar um pouquinho para o Flutter "mudar" o estado do Widget
    await tester.pump();

    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
