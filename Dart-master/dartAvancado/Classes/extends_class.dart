import 'dart:html';

void main(){
Client cliente1 = Client();
cliente1.name = "Matheus";
cliente1.bankAccount = "Matheus";

}


class Person {
  String? name;
  String? cpf;
  int? age ;
}

class Client extends Person { //[extends] isso é herança {Herdar tudo oque a outra classe tem, atributos,metodos}
  String? bankAccount; 
}