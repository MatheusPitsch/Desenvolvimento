void main(){
Computer<Apple> computer = Computer(brand: "Sansung", age: 20);

//Toda lista tem generics, pois o Dart não sabe qual  tipo que vamos definir para a mesma
List<int> numeros = [10,5,3];
print(computer.primeiroValor(numeros));

//Quando passamos um tipo para um dado generico, o Dart tipa automaticamente esse objeto durante toda a execuão.
}

//Uma forma de criar uma classe generica (Ai podemos tipa-la quando formos usar)
class Computer<T>{
  String brand;
  int age;

Computer({
  required this.brand,
  required this.age,
});

void openProgram<T>(T program){
  print(program.toString());
}
//Nesse caso não sabemos qual será o retorno, não sabemos qual o tipo de lista, então usamos generics.
//E depois do nome do método nós usamos generics para falar que esse metodo tera generics
T primeiroValor<T>(List<T> lista){
  return lista[0];
}

}

class Apple {}