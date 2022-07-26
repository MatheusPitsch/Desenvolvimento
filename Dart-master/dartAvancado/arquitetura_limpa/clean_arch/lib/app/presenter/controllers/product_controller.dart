import '../../domain/entities/producty_entity.dart';
import '../../domain/usecases/get_all_products/get_all_products_usecase.dart';
import '../../domain/usecases/get_product_id/get_product_id_usecase.dart';

class ProductController {
  final GetAllProductsUsecase _getAllProductsUsecase;

  final GetProductIdUsecase _getProductIdUsecase;

  ProductController(this._getAllProductsUsecase, this._getProductIdUsecase) {
    getAllProducts();
  }

  ProductyEntity? product;
  void getProductId(int id) {
    product = _getProductIdUsecase.call(id);
  }

  List<ProductyEntity> products = [];
  void getAllProducts() {
    products = _getAllProductsUsecase.call();
  }
}
