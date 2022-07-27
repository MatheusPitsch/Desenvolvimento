import 'package:exercicios/app/domain/repositories/get_all_brand_repository.dart';
import 'package:exercicios/app/domain/usecase/get_all_brand/get_all_brand_usecase.dart';

class GetAllBrandUsecaseImp implements GetAllBrandUsecase {
  final GetAllBrandRepository _repository;

  GetAllBrandUsecaseImp(this._repository);

  @override
  List<String> call() {
    return _repository.call();
  }
}
