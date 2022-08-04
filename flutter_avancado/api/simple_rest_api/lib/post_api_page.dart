import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class PostApiPage extends StatefulWidget {
  const PostApiPage({Key? key}) : super(key: key);

  @override
  State<PostApiPage> createState() => _PostApiPageState();
}

class _PostApiPageState extends State<PostApiPage> {
 
  Future postLogin() async {
    String baseUrl =
        "http://ec2-54-80-244-185.compute-1.amazonaws.com:3333/api/v1/auth/login";

    Map<String, dynamic> body = {
      "email": "deveda4217@logodez.com",
      "password": "Teste@123"
    };

    var response = await Dio().post(
      baseUrl,
      data: body,
    );

    print(response.data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            onPressed: () {postLogin();},
            child: const Text(""),
          ),
        ],
      ),
    );
  }
}
