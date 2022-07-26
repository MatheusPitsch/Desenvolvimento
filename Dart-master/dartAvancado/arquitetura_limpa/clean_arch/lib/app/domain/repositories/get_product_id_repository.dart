
import '../entities/producty_entity.dart';

abstract class GetProductIdRepository {
  ProductyEntity? call(int id);
}