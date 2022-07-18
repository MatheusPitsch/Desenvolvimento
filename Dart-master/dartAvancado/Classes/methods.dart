//metodo comun
import 'dart:ffi';

void main() {
  Computer.dizPraMim();
  Computer.metodoEstatico();
  Computer.valorConstante;
  Computer computer = Computer("Positivo");
  computer.setBrand = "Apple";
  print(computer.getBrand);
}

class Computer {
  static String valorConstante = 'ChaveDeAcesso202';
  String _brand;

//Os principais metodos especiais

//Metodo construtor.;
  Computer(this._brand);

//Metodo getter
  String get getBrand {
    return _brand;
  }

//Metodo setter
  set setBrand(String brand) {
    this._brand = brand;
  }

//METODO NORMAL

// metodo com retorno diferente e pedindo parametros
  List<Map<String, dynamic>> metodoMaisComplexo(List<String> names) {
    List<Map<String, dynamic>> myList = [
      {"name": "Matheus", "age": 20},
      {"name": "Proway", "age": 24}
    ];
    return myList;
  }

//Método Static
  static void metodoEstatico() {
    print("é chamado SEM INSTANCIAR a CLASSE");
  }

  static void dizPraMim() {
    print("Posso ser chamado sem instanciar o objeto");
  }

//Metedo com argumentos personalizados
 void metodoComArgumentosNomeados(String value,{String? valueOptinal})
{
print("Hello Wold");


//Metedo com argumentos personalizados
 void metodoComArgumentosNomeadosERequired(String value,{ required String valueOptinal}){
{
print("Hello Wold");
}

}


}
}