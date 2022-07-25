import '../entities/producty_entity.dart';

//Isso aqui o contrato  do nosso cado de uso para trazer todos os produtos.
abstract class GetAllProductsUsecase {
  List<ProductyEntity> call(); // o call tamebm  é chamado de funções callable, basicamente ela é chamada quando instanciamos a classe. 
}
