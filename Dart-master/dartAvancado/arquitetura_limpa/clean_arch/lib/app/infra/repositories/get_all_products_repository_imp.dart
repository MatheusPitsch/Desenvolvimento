
import '../../domain/entities/producty_entity.dart';
import '../../domain/repositories/get_all_products_repository.dart';
import '../datasources/get_all_products_datasource.dart';

//Aqui será a implementação do repositorio, porem não é ele quem fara a requisições na API ,Firebase, local,
//essa responsabilidade é dos datasources
//a implementação do repositorio servira como uma ponte de certa forma.
class GetAllProductsRepositoryImp implements GetAllProductsRepository{
//precisara de um contrato do datasource de trazer todos os produtos e esse contrato nos pediremos no construtor 
//para la no controller a agente passar a implementação
// Seguindo o principio DIP  (Dependency Inversion Principle)

final GetAllProductsDatasource _datasource;

GetAllProductsRepositoryImp(this._datasource);

  @override
  List<ProductyEntity> call() {
    return _datasource.call();    
  }
  
}