void main() {
  // Animal animal = Animal(name: "Gamora", age: 2);

Dog dog = Dog();

Cat cat =Cat();

cat.feed();
dog.feed();

}

abstract class Animal { // A classe faz com que a clase não possa ser instanciada,apenas extendida e implementada  

  void feed();
  void ruin(double distance);
  }

class Dog extends Animal {
  @override
  void feed() {
    print("Chacorro comendo");
  }

  @override
  void ruin(double distance) {
    print("Cachorro correndo");
  }
  
}

class Cat extends Animal {
  @override
  void feed() {
    print("Gato comendo");
  }

  @override
  void ruin(double distance) {
    print("Gato correndo");
  }

}
