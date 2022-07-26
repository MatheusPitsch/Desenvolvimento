import 'package:clean_arch/app/domain/usecases/get_product_id/get_product_id_usecase_imp.dart';
import 'package:clean_arch/app/infra/datasources/local/get_all_products_local_datasource_imp.dart';
import 'package:clean_arch/app/infra/datasources/local/get_product_id_local_datasource_imp.dart';
import 'package:clean_arch/app/infra/repositories/get_all_products_repository_imp.dart';
import 'package:clean_arch/app/infra/repositories/get_product_id_repository_imp.dart';
import 'package:clean_arch/app/presenter/controllers/product_controller.dart';
import 'package:get_it/get_it.dart';

import '../app/domain/usecases/get_all_products/get_all_products_usecase_imp.dart';

final getIt = GetIt.instance;

void setupDependencies() {
//DataSource
  getIt.registerSingleton<GetAllProductsLocalDatasourceImp>(
    GetAllProductsLocalDatasourceImp(),
  );

  getIt.registerSingleton<GetProductIdLocalDatasourceImp>(
    GetProductIdLocalDatasourceImp(),
  );

//REPOSITORIES
  getIt.registerSingleton<GetAllProductsRepositoryImp>(
    GetAllProductsRepositoryImp(
      getIt.get<GetAllProductsLocalDatasourceImp>(),
    ),
  );

  getIt.registerSingleton<GetProductIdRepositoryImp>(
    GetProductIdRepositoryImp(
      getIt.get<GetProductIdLocalDatasourceImp>(),
    ),
  );

//UseCase
  getIt.registerSingleton<GetAllProductsUsecaseImp>(
    GetAllProductsUsecaseImp(
      getIt.get<GetAllProductsRepositoryImp>(),
    ),
  );

  getIt.registerSingleton<GetProductIdUsecaseImp>(
    GetProductIdUsecaseImp(
      getIt.get<GetProductIdRepositoryImp>(),
    ),
  );

  //Controler
  getIt.registerSingleton<ProductController>(
    ProductController(
      getIt.get<GetAllProductsUsecaseImp>(),
      getIt.get<GetProductIdUsecaseImp>(),
    ),
  );
}
