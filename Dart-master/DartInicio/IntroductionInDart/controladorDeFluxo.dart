import 'dart:math';

void main() {
//   bool banhaQuente = true;
//   if(banhaQuente == true){
//     print("fritando ovo");
//   }else{
//     print("esperar");
//   }

// double clima = 21.0;
// if(clima < 20){
//   print("Pegar o casaco");
// } else{
//   print("Não precisa de casaco");
// }

//LAÇO DE REPETIÇÃO

  // int contador = 0;
  // while (contador <= 50) {
  //   print(contador);
  //   contador++;
  // }

  // print("Douglas não sabe contar até mil ajude ele");
  // int i = 0;
  // while (i <= 1000) {
  //   print("feijão n°${i}");

  //   if (i == 999) {
  //     print("João esqueceu aonde parou comece denovo");
  //     i = 0;
  //     while (i <= 1000) {
  //       print("feijão n°${i}");
  //       i++;
  //     }
  //     ;
  //   }
  //   i++;
  // }
  // print("Fim");

//   do {
//     print(contador);
//   } while (contador <= 10);

//   for (int i = 0; i <= 9; i++) {
//     print(i);
//   }

//

  // String pais = "Brasil";

  // switch (pais) {
  //   case "Brasil":
  //     print("Real");
  //     break;

  //   case "Argentina":
  //     print("Peso");
  //     break;
  //     defult:
  //     print("Não encontrado");
  // }

  // int numRandom = Random().nextInt(5);
  
  // switch (numRandom) {
  //   case 1:
  //     print("Você tirou 1 de poder");
  //     break;
  //   case 2:
  //     print("Você tem duas armas");
  //     break;

  //   case 3:
  //     print("Você ganhou 3 vidas");
  //     break;

  //   case 4:
  //     print("Você ganhou 4 animais");
  //     break;

  //   case 5:
  //     print("Você ganhou 5 feitiços");
  //     break;
  // }

Animal cao = Animal("Gamora",2);
}

class Animal{

String name;
int age;

Animal(this.name, this.age) : assert(name == "Gamora", "Cringe");

}