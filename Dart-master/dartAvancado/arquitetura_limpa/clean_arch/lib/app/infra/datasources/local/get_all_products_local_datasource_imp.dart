import '../../../domain/entities/producty_entity.dart';
import '../get_all_products_datasource.dart';

class GetAllProductsLocalDatasourceImp implements GetAllProductsDatasource {
  @override
  List<ProductyEntity> call() {
    return [
      ProductyEntity(
          id: 1,
          name: "Computador",
          brand: "Lenovo",
          category: "Eletronicos",
          price: 1000,
          qtd: 3),
      ProductyEntity(
          id: 2,
          name: "CellPhone",
          brand: "IPobre",
          category: "Eletronicos",
          price: 10,
          qtd: 1),
      ProductyEntity(
          id: 3,
          name: "Garrafa de Agua",
          brand: "Caixa da água",
          category: "Utilitarios",
          price: 20,
          qtd: 5),
    ];
  }
}
