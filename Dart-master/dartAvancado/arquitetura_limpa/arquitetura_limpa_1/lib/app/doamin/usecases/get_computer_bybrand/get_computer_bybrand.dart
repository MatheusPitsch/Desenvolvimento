import '../../entitites/computer_entity.dart';

abstract class IGetComputerByBrandUsecase {
  ComputerEntity call(String brand);
}
