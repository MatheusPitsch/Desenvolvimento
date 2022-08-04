import 'package:brasil_fields/brasil_fields.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simple_rest_api/get_cep_model.dart';

class GetApiPage extends StatefulWidget {
  const GetApiPage({Key? key}) : super(key: key);
  @override
  State<GetApiPage> createState() => _GetApiPageState();
}

class _GetApiPageState extends State<GetApiPage> {
  TextEditingController cepController = TextEditingController();
  final cepFocusNode = FocusNode();

  GetCepModel? getCepModel;

  Future<GetCepModel?> getInfoByCep() async {
    try {
      String cep = cepController.text.replaceAll(RegExp('[^0-9]+'), '');

      final response = await Dio().get('https://viacep.com.br/ws/$cep/json/');

      if (response.data['erro'] != "true") {
        return GetCepModel.fromMap(response.data);
      }
    } catch (e) {
      print("Deu erro");
    } finally {
      setState(() {});
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pesquisador de CEP'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                focusNode: cepFocusNode,
                controller: cepController,
                decoration: (const InputDecoration(hintText: 'Insira seu CEP')),
                style: const TextStyle(fontSize: 20),
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  CepInputFormatter(),
                ],
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value!.length != 10) {
                    return 'O CEP precisa ser composto por 8 dígitos numéricos';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 40),
              ElevatedButton.icon(
                style: const ButtonStyle(),
                onPressed: () async {
                  await getInfoByCep();
                },
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                label: const Text(
                  'Pesquisar',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 40),
              FutureBuilder(
                future: getInfoByCep(),
                builder: (context, AsyncSnapshot<GetCepModel?> snapshot) {
                  if (snapshot.data == null) {
                    return const Text("Nunhum resultado encontrado");
                  }

                  getCepModel = snapshot.data;

                  return Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: const BorderSide(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Row(
                            children: const [
                              CircleAvatar(
                                radius: 28,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 25,
                                  child: Icon(
                                    Icons.home_work_outlined,
                                    size: 30,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 35,
                              ),
                              Text(
                                'Meu endereço',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${getCepModel!.logradouro}, ${getCepModel!.bairro}, ${getCepModel!.localidade}',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey.shade600,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      getCepModel!.cep,
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey.shade600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              CircleAvatar(
                                radius: 28,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 25,
                                  child: Text(
                                    getCepModel!.uf,
                                    style: const TextStyle(
                                      fontSize: 22,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
