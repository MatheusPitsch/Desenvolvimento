/*
Oque é uma clasese ?

Serve como um modelo

Sempre começa com letra MAIUSCULA

*/
import 'dart:math';

void main(){
  Animal? animal;
print(animal?.name ?? "Desconhecido" );
}


class Animal {
//atributos
  String? name; //Ponto de interrogação serve para dizer que ele pode ser nulo
  int? age;
  double? weigth;

//Metodos
  void run() {
    // if (age != null && weigth != null) {double result = age! * weigth!;}
    ////Ponto de exclamação significa que estou dizend que a variavel(atributo)não será nulo
    double result = (age ?? 1) * (weigth ?? 1);
    //Colocando 2 P/ de interroçação ele entende que se for null ele adiciona um numero que passamos para ele

    print("Correndo...");
  }

  void scream() {
    print("Gritando...");
  }
}
