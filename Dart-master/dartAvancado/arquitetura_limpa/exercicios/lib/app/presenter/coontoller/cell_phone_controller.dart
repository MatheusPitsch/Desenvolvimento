import 'package:exercicios/app/domain/entities/cell_phone_entities.dart';
import 'package:exercicios/app/domain/usecase/get_cellphones_by_brand_usecase.dart';

class CellPhoneController {
  final GetCellphonesByBrandUsecase _getCellphonesByBrandUsecase;

  CellPhoneController(this._getCellphonesByBrandUsecase) {
    // getProductByBrand();
  }

  List<CellPhoneEntities> product = [];
  getProductByBrand(String brand) {
    // return product = _getCellphonesByBrandUsecase.call(brand);
  }
}
