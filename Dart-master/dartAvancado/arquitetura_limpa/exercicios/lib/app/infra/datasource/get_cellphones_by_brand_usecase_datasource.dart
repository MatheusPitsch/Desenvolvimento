

import '../../domain/entities/cell_phone_entities.dart';

abstract class GetCellphonesByBrandDatasource {
  CellPhoneEntities? call(String brand);
}