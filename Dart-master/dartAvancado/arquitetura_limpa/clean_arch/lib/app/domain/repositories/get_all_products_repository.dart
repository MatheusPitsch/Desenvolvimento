
import '../entities/producty_entity.dart';

//Essa será o contrato do repositorio a implementaão dele ficara dentro de infra
abstract class GetAllProductsRepository {
  //Ele será praticamente igual ao do usercase, as vezes a diferença é que será um Future.
  //Porém não podemos usar o usecase para usar na implementação do repositorio
  //pois estarioamos ferindo o principio do SRP (Single responsability Principle) Do SOLID
  List<ProductyEntity> call ();
}