class AnimePhotosModel {
  String source;

  AnimePhotosModel({
    required this.source,
  });

  factory AnimePhotosModel.fromMap(Map<String, dynamic> map) {
    return AnimePhotosModel(source: map["source"]);
  }
}
