import 'package:dio/dio.dart';
import 'package:exercise_2/anime_photos_model.dart';

class AnimePhotoRepository {
  final Dio dio;

  AnimePhotoRepository(this.dio);

  Future<List<AnimePhotosModel>> getAnimeImage() async {
    List<AnimePhotosModel> photos = [];

    final reponse = await dio.get("https://api.waifu.im/random/");

    photos = List.from(reponse.data.map((photos) {
      return AnimePhotosModel.fromMap(photos);
    }),);

    return photos;
  }
}
