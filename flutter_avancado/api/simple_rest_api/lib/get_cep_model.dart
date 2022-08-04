// ignore_for_file: public_member_api_docs, sort_constructors_first
class GetCepModel {
  final String cep;
  final String logradouro;
  final String bairro;
  final String localidade;
  final String uf;

  GetCepModel({
    required this.cep,
    required this.logradouro,
    required this.bairro,
    required this.localidade,
    required this.uf,
  });

factory GetCepModel.fromMap(Map<String, dynamic> map){
  return GetCepModel(
    cep: map["cep"],
   logradouro: map["logradouro"], 
   bairro: map["bairro"],
    localidade: map["localidade"], 
    uf: map["uf"],
    );
}

}
