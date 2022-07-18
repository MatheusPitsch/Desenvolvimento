void main() {
  // Animal animal = Animal(name: "Gamora", age: 2);

Dog dog = Dog(name: "toto", age: 5);

Cat cat =Cat(name: "mimi", age: 2);

cat.feed(); //Qunado eu extendo alguma classe, posso usar os metodos da classe mãe
dog.feed();

}

abstract class Animal { // A classe faz com que a clase não possa ser instanciada,apenas extendida e implementada
  String name;
  int age;

  Animal({
    required this.name,
    required this.age,
  });

  void feed() {
    print("animal comendo");
  }
}

class Dog extends Animal {
  Dog({required super.name, required super.age}); // super significa que está puxando da calase mãe

  void run() {
    print("Cachorro correndo");
  }
}

class Cat extends Animal {
  Cat({required super.name, required super.age});

  void run() {
    print("Gato correndo");
  }
}
