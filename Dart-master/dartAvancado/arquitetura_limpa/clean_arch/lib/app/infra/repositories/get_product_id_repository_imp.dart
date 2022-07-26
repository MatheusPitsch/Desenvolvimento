import '../../domain/entities/producty_entity.dart';
import '../../domain/repositories/get_product_id_repository.dart';
import '../datasources/get_product_id_datasource.dart';

class GetProductIdRepositoryImp implements GetProductIdRepository{
  
final GetProductIdDatasource _datasource;

GetProductIdRepositoryImp(this._datasource);

  @override
  ProductyEntity? call(int id) {
    return _datasource.call(id);
  }
  
}