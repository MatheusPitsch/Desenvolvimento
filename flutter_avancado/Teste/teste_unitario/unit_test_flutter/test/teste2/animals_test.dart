import 'list_animals.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late Animals animalsList;

  setUp(
    () {
      animalsList = Animals();
    },
  );

  test(
    "Testando se increment esta funcionando",
    () {
      animalsList.animalsNext();

      expect(animalsList.animals[animalsList.index], equals("bird"));
    }, skip: true,
  );

  test(
    "Testando se ha asteristicos",
    () {
      // for (String animal in animalsList.animals) {
      //   for (int index = 0; index < animal.length; index++) {
      //     expect(animal[index], anyElement(["*", ",", ".", ";", "+"]));
      //   }
      // }

      expect(
        animalsList.animals[animalsList.index].contains(
          RegExp('/[^a-zA-Z0-9]+/g'),
        ),
        equals(false),
      );

      //expect(animalsList.animal, contains("*"));
    },
  );
}
