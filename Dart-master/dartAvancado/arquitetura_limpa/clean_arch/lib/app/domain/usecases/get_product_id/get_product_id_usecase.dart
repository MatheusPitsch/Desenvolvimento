
import 'package:clean_arch/app/domain/entities/producty_entity.dart';

abstract class GetProductIdUsecase {
  ProductyEntity? call(int id);
}