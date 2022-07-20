import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

// class HomePage extends StatelessWidget {
//   Future<void> _launchUrl() async {
//     if (!await launchUrl(Uri.parse("https://pub.dev/packages/url_launcher"))) {
//       throw 'Could not launch https://pub.dev/packages/url_launcher';
//     }
//   }

//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Tela Inicial'),
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             MaterialButton(
//               onPressed: () {
//                 Share.share('check my instragram @_pitsch_');
//               },
//               color: Colors.blue,
//               child: const Text("Compartilhar"),
//             ),
//             MaterialButton(
//               onPressed: () {
//                 _launchUrl();
//               },
//               color: Colors.blue,
//               child: const Text("Abrir Pub Dev"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class HomePige extends StatefulWidget {
  const HomePige({Key? key}) : super(key: key);

  @override
  State<HomePige> createState() => _HomePigeState();
}

class _HomePigeState extends State<HomePige> {
  Future<List<int>> getNumbers() async {
   await Future.delayed(const Duration(seconds:4));
    return [0, 1, 2, 3, 4, 5, 6, 7];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getNumbers(),
        builder: (context, AsyncSnapshot<List<int>> snapshot) {
          if (snapshot.hasData == false){
            return const CircularProgressIndicator();
          }
        return ListView.builder(          
          itemCount: snapshot.data!.length,
          itemBuilder: (context,index) {
          return ListTile(
            title: Text("sou o ${index}"),
          );
        });
        },
      ),
    );
  }
}
