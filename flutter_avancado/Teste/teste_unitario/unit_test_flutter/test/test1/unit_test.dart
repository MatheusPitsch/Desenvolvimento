import 'package:flutter_test/flutter_test.dart';

import 'change_counter.dart';

void main() {
  late ChangeCounter changeCounter;

  setUp(
    () {
      changeCounter = ChangeCounter();
    },
  );

  group(
    'Testando a clase ChangeCounter',
    () {
      test(
        "Testando valor inicial de counter",
        () {
          expect(changeCounter.counter, equals(0));
        },
      );
      test(
        "Testando os increment de ChangeCounter",
        () {
          expect(changeCounter.counter, equals(0));

          changeCounter.increment();

          expect(changeCounter.counter, equals(1));
        },
      );

      test(
        "Testando os decrement de ChangeCounter",
        () {
          changeCounter.decrement();

          expect(changeCounter.counter, equals(-1));
        },
      );
    },
  );
/*




*/
  test(
    "Testando valor inicial de counter",
    () {
      expect(changeCounter.counter, equals(0));
    },
  );

  test(
    "Testando os increment de ChangeCounter",
    () {
      changeCounter.increment();

      expect(changeCounter.counter, equals(1));
    },
  );

  test(
    "Testando os decrement de ChangeCounter",
    () {
      changeCounter.decrement();

      expect(changeCounter.counter, equals(-1));
    },
  );
}
