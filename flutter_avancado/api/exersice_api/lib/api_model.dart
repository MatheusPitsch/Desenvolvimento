class MovieModel {
  String title;
  String originalTitle;
  String movieBanner;
  String description;

  MovieModel({
    required this.title,
    required this.originalTitle,
    required this.movieBanner,
    required this.description,
  });

  factory MovieModel.fromMap(Map<String, dynamic> map) {
    return MovieModel(
      title: map["title"],
      originalTitle: map["original_title"],
      movieBanner: map["movie_banner"],
      description: map["description"],
    );
  }
}
