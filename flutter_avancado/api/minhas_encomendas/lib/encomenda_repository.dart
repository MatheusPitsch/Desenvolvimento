import 'package:dio/dio.dart';
import 'package:minhas_encomendas/evento_model.dart';

class EncomendaRepository {
  final Dio dio;

  EncomendaRepository(this.dio);

  Future<List<EventoModel>> getEvents() async {
    List<EventoModel> events = [];

    var data = {"code": "NA246729768", "type": "BR"};

    final response = await dio.post(
      "https://correios.contrateumdev.com.br/api/rastreio",
      data: data,
    );

    events = List.from(
      response.data['objeto'][0]["evento"].map(
        (evento) {
          return EventoModel.fromMap(evento);
        },
      ),
    );
    print(events);
    return events;
  }
}
