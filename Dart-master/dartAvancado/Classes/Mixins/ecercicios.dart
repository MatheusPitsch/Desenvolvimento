void main(){

Ana pessoazinha = Ana();

pessoazinha.naoDormi();


}

class Pessoa {
String? nome;

void dormi() => print("dormindo");

}

class Matheus extends Pessoa{}
class Ana extends Pessoa with Coder {}
class Luanin extends Pessoa with Coder{}
class Jozefina extends Pessoa {}


mixin Coder{

  void naoDormi() => print("programador não dorme");
}