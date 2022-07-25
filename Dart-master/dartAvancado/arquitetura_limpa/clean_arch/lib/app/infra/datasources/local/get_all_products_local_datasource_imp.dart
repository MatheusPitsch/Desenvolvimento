import '../../../domain/entities/producty_entity.dart';
import '../get_all_products_datasource.dart';

class GetAllProductsLocalDatasourceImp implements GetAllProductsDatasource {
  @override
  List<ProductyEntity> call() {
    return [
      ProductyEntity(
          name: "Computador",
          brand: "Lenovo",
          category: "Eletronicos",
          price: 1000,
          qtd: 3),
      ProductyEntity(
          name: "CellPhone",
          brand: "IPobre",
          category: "Eletronicos",
          price: 10,
          qtd: 1),
      ProductyEntity(
          name: "Garrafa de Agua",
          brand: "Caixa da água",
          category: "Utilitarios",
          price: 20,
          qtd: 5),
    ];
  }
}
