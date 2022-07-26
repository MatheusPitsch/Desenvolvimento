import 'package:clean_arch/app/domain/entities/producty_entity.dart';
import 'package:clean_arch/app/domain/repositories/get_product_id_repository.dart';

import 'get_product_id_usecase.dart';

class GetProductIdUsecaseImp implements GetProductIdUsecase {
  final GetProductIdRepository _repository;
  GetProductIdUsecaseImp(this._repository);

  @override
  ProductyEntity? call(int id) {
    return _repository.call(id);
  }
}