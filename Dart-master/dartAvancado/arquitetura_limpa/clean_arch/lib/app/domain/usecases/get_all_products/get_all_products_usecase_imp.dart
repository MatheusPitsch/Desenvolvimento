
import '../../entities/producty_entity.dart';
import '../../repositories/get_all_products_repository.dart';
import 'get_all_products_usecase.dart';

//Contém as regras de negocia de aplicação 
//Essa é a implementação do caso de uso GetAllProducts
class GetAllProductsUsecaseImp implements GetAllProductsUsecase {
  //Aqui precisamos de um CNTRATO do repositorio para fazer chamada do metodo.
  //e dependeremos de abstração e não de implementação por isso contrato.

 final GetAllProductsRepository _repository;
GetAllProductsUsecaseImp(this._repository);
  @override
  List<ProductyEntity> call() {    
    return _repository.call();
  }
  
}