import 'package:dio/dio.dart';
import 'package:exercise_2/anime_photo_repository.dart';
import 'package:exercise_2/anime_photos_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AnimePhotoRepository repository = AnimePhotoRepository(Dio());

  late Future<List<AnimePhotosModel>> photos;

  @override
  void initState() {
    photos = repository.getAnimeImage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: FutureBuilder(
        future: photos,
        builder: (context, AsyncSnapshot<List<AnimePhotosModel>> snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                AnimePhotosModel anime = snapshot.data![index];
                return Container(
                  child: Image.network(anime.source),
                );
              },
            );
          }
          return const CircularProgressIndicator();
        },
      ),
    ));
  }
}
