import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:minhas_encomendas/encomenda_repository.dart';
import 'package:minhas_encomendas/evento_model.dart';

class EnomendaPage extends StatefulWidget {
  const EnomendaPage({Key? key}) : super(key: key);

  @override
  State<EnomendaPage> createState() => _EnomendaPageState();
}

class _EnomendaPageState extends State<EnomendaPage> {
  final _repository = EncomendaRepository(Dio());
  late Future<List<EventoModel>> events;

  @override
  void initState() {
    events = _repository.getEvents();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Container(),
    );
  }
}
