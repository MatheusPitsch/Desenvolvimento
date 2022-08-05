
class CepModel {
  String cep;
  String logradouro;
  String bairro;
  String localidade;
  String uf;

  CepModel({
    required this.cep,
    required this.logradouro,
    required this.bairro,
    required this.localidade,
    required this.uf,
  });

  factory CepModel.fromMap(Map<String, dynamic> map) {
    return CepModel(
      cep: map["cep"],
      logradouro: map["logradouro"],
      bairro: map["bairro"],
      localidade: map["localidade"],
      uf: map["uf"],
    );
  }
}
