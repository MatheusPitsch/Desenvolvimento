import 'dart:ffi';
import 'dart:html';

void main() {
  Client cliente1 = Client();
  cliente1.name = "Matheus";
  cliente1.bankAccount = "Matheus";
}

abstract class Person {
  String? name;
  String? cpf;
  int? birthday;

  int getAge() {
    return DateTime.now().year - birthday!;
  }

  void login(){
    print("Login padrão");
  }

}

class Client extends Person {
  //[extends] isso é herança {Herdar tudo oque a outra classe tem, atributos,metodos}
  String? bankAccount;
  
  @override
   void login(){ //herdando um método e sobrescrevendo ele
    print("Login padrão");
  }

  @override
  int getAge(){
    print(super.getAge()); // acessando o método getAge da classe Pai.
    return 10;
  }
}
