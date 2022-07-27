import 'package:exercicios/app/domain/repositories/get_all_brand_repository.dart';
import 'package:exercicios/app/infra/datasource/get_all_brand_datasource.dart';

class GetAllBrandRepositoryImp implements GetAllBrandRepository {
  final GetAllBrandDatasource _datasource;

  GetAllBrandRepositoryImp(this._datasource);

  @override
  List<String> call() {
    return _datasource.call();
  }
}
