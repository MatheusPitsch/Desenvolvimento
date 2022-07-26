import '../../domain/entities/producty_entity.dart';

abstract class GetProductIdDatasource {
  ProductyEntity? call(int id);
}
