
import 'dart:math';

void main(){
}


class Animal {
//atributos
  String name; 
  int age;
  double weigth;

//Construtor
Animal(this.name,this.age,this.weigth);

//Metodos
  void run() {    
    print("Correndo...");
  }

  void scream() {
    print("Gritando...");
  }
}
