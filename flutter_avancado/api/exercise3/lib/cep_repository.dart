import 'package:dio/dio.dart';
import 'package:exercise3/cep_model.dart';

class CepRepository {
  final Dio dio;
  CepRepository(this.dio);

  
  Future<CepModel?> getInfoBtCep(String cepController) async {
    String cep = cepController.replaceAll(RegExp('[^0-9]+'), '');

    final response = await Dio().get("https://viacep.com.br/ws/$cep/json/");

    if (response.data["erro"] != true) {
      return CepModel.fromMap(response.data);
    }
    return null;
  }
}
