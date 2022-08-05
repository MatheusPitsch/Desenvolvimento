import 'package:exercise3/cep_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:brasil_fields/brasil_fields.dart';

class GetCepPage extends StatefulWidget {
  const GetCepPage({Key? key}) : super(key: key);

  @override
  State<GetCepPage> createState() => _GetCepPageState();
}

class _GetCepPageState extends State<GetCepPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
              CepInputFormatter(),
            ],
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) {
              if (value!.length != 10) {
                return "O cep precisa conter 10 números";
              }
              return null;
            },
          ),
          ElevatedButton.icon(
            onPressed: () async {
              await getInfoByCep();
            },
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
