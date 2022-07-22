import '../../entitites/computer_entity.dart';
import '../../repositories/get_computer_bybrand_repository.dart';

import 'get_computer_bybrand.dart';

class GetComputerByBrandUsecaseImp implements IGetComputerByBrandUsecase {
  IGetComputerBybrandRepository _getComputerBybrandRepository;

  GetComputerByBrandUsecaseImp(this._getComputerBybrandRepository);

  @override
  ComputerEntity call(String brand) {
    return _getComputerBybrandRepository.getComputerByBrand(brand);
  }
}
