import '../entities/cell_phone_entities.dart';
import '../repositories/get_cellphones_by_brand_repositorys.dart';
import 'get_cellphones_by_brand_usecase.dart';

class GetCellphonesByBrandUsecaseImp implements GetCellphonesByBrandUsecase {
  final GetCellphonesByBrandRepositories _repositories;
  GetCellphonesByBrandUsecaseImp(this._repositories);

  @override
  CellPhoneEntities? call(String brand) {
    return _repositories.call(brand);
  }
}
