import '../../domain/entities/cell_phone_entities.dart';
import '../../domain/repositories/get_cellphones_by_brand_repositorys.dart';
import '../datasource/get_cellphones_by_brand_usecase_datasource.dart';

class GetCellphonesByBrandRepositoriesImp
    implements GetCellphonesByBrandRepositories {
  final GetCellphonesByBrandDatasource _datasource;

  GetCellphonesByBrandRepositoriesImp(this._datasource);

  @override
  CellPhoneEntities? call(String brand) {
    return _datasource.call(brand);
  }
}
