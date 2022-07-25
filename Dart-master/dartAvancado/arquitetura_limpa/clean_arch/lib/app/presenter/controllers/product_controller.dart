import '../../domain/entities/producty_entity.dart';
import '../../domain/usecases/list_product/get_all_products_usecase.dart';

class ProductController {
  GetAllProductsUsecase _getAllProductsUsecase;
  ProductController(this._getAllProductsUsecase) {
    getAllProducts();
  }

  List<ProductyEntity> products = [];
  void getAllProducts() {
    products = _getAllProductsUsecase.call();
  }
}
