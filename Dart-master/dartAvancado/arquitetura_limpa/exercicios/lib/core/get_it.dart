import 'package:exercicios/app/domain/usecase/get_cellphones_by_brand_usecase_imp.dart';
import 'package:exercicios/app/infra/datasource/get_cellphones_by_brand_usecase_datasource.dart';
import 'package:exercicios/app/infra/datasource/local/gett_all_cell_phones_datasource_imp.dart';
import 'package:exercicios/app/infra/repositories/get_cellphones_by_brand_repositories.dart';
import 'package:exercicios/app/presenter/coontoller/cell_phone_controller.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupDependencies() {
  
  getIt.registerSingleton<GettAllCellPhonesDatasourceImp>(
    GettAllCellPhonesDatasourceImp(),
  );

  getIt.registerSingleton<GetCellphonesByBrandRepositoryImp>(
    GetCellphonesByBrandRepositoryImp(
      getIt.get<GettAllCellPhonesDatasourceImp>(),
    ),
  );

  getIt.registerSingleton<GetCellphonesByBrandUsecaseImp>(
    GetCellphonesByBrandUsecaseImp(
      getIt.get<GetCellphonesByBrandRepositoryImp>(),
    ),
  );

  getIt.registerSingleton<CellPhoneController>(
    CellPhoneController(
      getIt.get<GetCellphonesByBrandUsecaseImp>(),
    ),
  );
}
