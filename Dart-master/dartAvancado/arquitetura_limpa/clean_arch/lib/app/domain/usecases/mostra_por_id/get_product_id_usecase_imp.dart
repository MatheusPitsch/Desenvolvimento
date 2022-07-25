import 'package:clean_arch/app/domain/entities/producty_entity.dart';
import 'package:clean_arch/app/domain/usecases/mostra_por_id/get_product_id_usecase.dart';

class GetProductIdUsecaseImp implements GetProductIdUsecase {
  final GetProductIdUsecase _repository;

  GetProductIdUsecaseImp(this._repository);
  @override
  ProductyEntity call() {
    return _repository.call();
  }
}
