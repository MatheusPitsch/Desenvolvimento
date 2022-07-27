
import '../entities/cell_phone_entities.dart';

abstract class GetCellphonesByBrandUsecase {
  CellPhoneEntities? call(String brand);
}