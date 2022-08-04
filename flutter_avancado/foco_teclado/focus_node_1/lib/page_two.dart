import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  FocusNode focusEmail = FocusNode();
  FocusNode focusCep = FocusNode();
  FocusNode focusRua = FocusNode();

  final KeyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registre-se"),
      ),
      body: Form(
        key: KeyForm,
        child: Column(
          children: [
            TextFormField(
              autofocus: true,
              decoration: const InputDecoration(hintText: "Nome"),
              autovalidateMode: AutovalidateMode.always,
              validator: (value) {
                if (value!.length < 6) {
                  return "A senha deve ter no minimo 6 caracteres";
                }
                return null;
              },
              // onSubmitted: (value) => focusEmail.requestFocus()
            ),
            const SizedBox(height: 20),
            TextField(
                focusNode: focusEmail,
                decoration: const InputDecoration(hintText: "Email"),
                onSubmitted: (value) => focusCep.requestFocus()),
            const SizedBox(height: 20),
            TextField(
                focusNode: focusCep,
                decoration: const InputDecoration(hintText: "Cep"),
                onSubmitted: (value) => focusRua.requestFocus()),
            const SizedBox(height: 20),
            TextField(
              focusNode: focusRua,
              decoration: const InputDecoration(hintText: "Rua"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (KeyForm.currentState!.validate()) {
                  print("Ta validando");
                } else {
                  print("Ta errado");
                }
              },
              child: const Text("Registrar"),
            )
          ],
        ),
      ),
    );
  }
}
