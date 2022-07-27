import 'package:arquitetura_limpa_1/app/doamin/repositories/save_computer_favorite_repository.dart';

import '../../entitites/computer_entity.dart';
import 'save_computer_favorite_usecase.dart';

class SaveComputerFavoriteUsecaseImp implements ISaveComputerFavoriteUsecase {
  final ISaveComputerFavoriteRepository _repository;

  SaveComputerFavoriteUsecaseImp(this._repository);

  @override
  Future<bool> save(ComputerEntity computer) async {
    return await _repository.save(computer);
  }
}
