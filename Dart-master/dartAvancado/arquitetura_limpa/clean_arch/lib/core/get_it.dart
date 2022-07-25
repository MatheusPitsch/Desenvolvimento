import 'package:clean_arch/app/domain/usecases/list_product/get_all_products_usecase_imp.dart';
import 'package:clean_arch/app/infra/datasources/local/get_all_products_local_datasource_imp.dart';
import 'package:clean_arch/app/infra/repositories/get_all_products_repository_imp.dart';
import 'package:clean_arch/app/presenter/controllers/product_controller.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupDependencies() {


//DataSource
  getIt.registerSingleton<GetAllProductsLocalDatasourceImp>(
    GetAllProductsLocalDatasourceImp(),
  );

//REPOSITORIES
  getIt.registerSingleton<GetAllProductsRepositoryImp>(
    GetAllProductsRepositoryImp(getIt.get<GetAllProductsLocalDatasourceImp>()),
  );

//UseCase
  getIt.registerSingleton<GetAllProductsUsecaseImp>(
    GetAllProductsUsecaseImp(getIt.get<GetAllProductsRepositoryImp>()),
  );

  //Controler
  getIt.registerSingleton<ProductController>(
    ProductController(getIt.get<GetAllProductsUsecaseImp>()),
  );
}
