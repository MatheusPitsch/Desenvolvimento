
import '../entities/cell_phone_entities.dart';

abstract class GetCellphonesByBrandRepositories {
  CellPhoneEntities? call(String brand);
}