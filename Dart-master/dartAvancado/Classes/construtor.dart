void main() {}

class Construtor {
  String? name;
  int? age;
  String? hobby;

  Construtor(
      this.name, this.age); //Construtor NÃO NOMEADO (Posição obrigatoria)

  Construtor.nomeadoOpcional(
      {this.name,
      this.hobby,
      this.age}); //Construtor Nomeado com paremetros opcional (tem que colocar o ? no atributo..)

  Construtor.nameadoRequerido(
      {required this.name,
      required this.hobby,
      required this.age}); //Construtor Nomeado com paremetros REQUIRIDO

  Construtor.hibrido(this.name,
      {required this.hobby,
      required this.age}); //Construtor HIBRIDO, onde tem requerido e não requerido

  Construtor.hibridoComDefault(this.name,
      {this.hobby = "Programar",
      required this.age}); //Construtor HIBRIDO com DEFAULT

}

class Casa {
  double tamanho;
  bool estaOcupada;

  Casa(this.tamanho, this.estaOcupada);
}

class CasaNomeadoOpcional {
  double? tamanho;
  bool? estaOcupada;

  CasaNomeadoOpcional({this.tamanho, this.estaOcupada});
}

class CasaNomeadoRequirido {
  double tamanho;
  bool estaOcupada;

  CasaNomeadoRequirido({required this.tamanho, required this.estaOcupada});
}

class CasaHibrido {
  double tamanho;
  bool? estaOcupada;

  CasaHibrido(this.tamanho, {this.estaOcupada});
}
// class CasaHibridoDefault{
//   double tamanho;
//   bool estaOcupada;

//   CasaHibridoDefault(this.tamanho = 1.5,this.estaOcupada) 

// }
