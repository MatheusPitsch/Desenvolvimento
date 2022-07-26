import 'package:exercicios/app/domain/entities/cell_phone_entities.dart';
import 'package:exercicios/app/infra/datasource/get_cellphones_by_brand_usecase_datasource.dart';

class GettAllCellPhones implements GetCellphonesByBrandDatasource {
  @override
  CellPhoneEntities? call(String brand) {
    List<CellPhoneEntities> products = [
      CellPhoneEntities(
        brand: "Ipobre",
        model: "13 Pro William",
        price: 2510.54,
        storage: 10,
        qtd: 10,
      ),
      CellPhoneEntities(
        brand: "Iphone",
        model: "13 Pro Max",
        price: 102510.54,
        storage: 1,
        qtd: 1,
      ),
      CellPhoneEntities(
        brand: "Sangung",
        model: "S7",
        price: 210.54,
        storage: 15,
        qtd: 12,
      ),
      CellPhoneEntities(
        brand: "Sangung",
        model: "S21",
        price: 510.54,
        storage: 25,
        qtd: 11,
      ),
      CellPhoneEntities(
        brand: "Ipobre",
        model: "11",
        price: 251.54,
        storage: 30,
        qtd: 15,
      ),
    ];

    for(CellPhoneEntities product in products){
      if(product.brand == brand){
        return product;
      }
    }
  }
}
