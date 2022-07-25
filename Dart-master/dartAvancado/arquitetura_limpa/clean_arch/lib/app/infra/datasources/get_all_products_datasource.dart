
import '../../domain/entities/producty_entity.dart';

//vai ser o contrato do nosso datasource de trazer todos os comentarios
abstract class GetAllProductsDatasource {
  List<ProductyEntity> call();
}