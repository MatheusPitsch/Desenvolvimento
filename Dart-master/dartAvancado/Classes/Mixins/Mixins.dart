void main() {}

class Pessoa {
  String? nome;
  String? cpf;
  int? idade;

void comer() => print("comendo");
void dancar() => print("comendo");
void beber() => print("comendo");
void dormir() => print("comendo");

}

class Pedrinho extends Pessoa{}
class Douglas extends Pessoa{}
class Matheus extends Pessoa with Codar{} //Com a palavra with eu uso os Moxins
class Paulo extends Pessoa with Codar{}
class Jose extends Pessoa with Codar{}

//Para criar um mixins eu usarei a palavra chave mixin 
mixin Codar{ 
void programar(){  //Aqui escrevo o método que será injetado em outra classe
  print("programano");
}

}