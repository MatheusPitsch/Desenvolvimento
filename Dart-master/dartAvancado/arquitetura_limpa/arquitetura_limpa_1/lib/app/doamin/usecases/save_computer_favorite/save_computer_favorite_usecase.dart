import '../../entitites/computer_entity.dart';

abstract class ISaveComputerFavoriteUsecase {
  Future<bool> save(ComputerEntity computer);
}
