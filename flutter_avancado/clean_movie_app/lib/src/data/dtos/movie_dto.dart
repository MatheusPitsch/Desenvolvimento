import 'package:clean_movie_app/src/domain/entities/movie_entity.dart';

class MovieDto extends MovieEntity {
  MovieDto({
    required bool adult,
    required String backdropPath,
    required int id,
    required String title,
    required String originalLanguage,
    required String originalTitle,
    required String overview,
    required String posterPath,
    required String mediaType,
    required List<int> genreIds,
    required double popularity,
    required String releaseDate,
    required bool video,
    required double voteAverage,
    required int voteCount,
  }) : super(
          adult: adult,
          backdropPath: backdropPath,
          id: id,
          title: title,
          originalLanguage: originalLanguage,
          originalTitle: originalTitle,
          overview: overview,
          posterPath: posterPath,
          mediaType: mediaType,
          genreIds: genreIds,
          popularity: popularity,
          releaseDate: releaseDate,
          video: video,
          voteAverage: voteAverage,
          voteCount: voteCount,
        );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adult': adult,
      'backdrop_path': backdropPath,
      'id': id,
      'title': title,
      'original_language': originalLanguage,
      'original_title': originalTitle,
      'overview': overview,
      'poster_path': posterPath,
      'media_type': mediaType,
      'genre_ids': genreIds,
      'popularity': popularity,
      'release_date': releaseDate,
      'video': video,
      'vote_average': voteAverage,
      'vote_count': voteCount,
    };
  }

  factory MovieDto.fromMap(Map<String, dynamic> map) {
    return MovieDto(
      adult: map['adult'] as bool,
      backdropPath: map['backdrop_path'] as String,
      id: map['id'].toInt() as int,
      title: map['title'] as String,
      originalLanguage: map['original_language'] as String,
      originalTitle: map['original_title'] as String,
      overview: map['overview'] as String,
      posterPath: map['poster_path'] as String,
      mediaType: map['media_type'] as String,
      genreIds: List<int>.from((map['genre_ids'] as List<int>)),
      popularity: map['popularity'].toDouble() as double,
      releaseDate: map['release_date'] as String,
      video: map['video'] as bool,
      voteAverage: map['vote_average'].toDouble() as double,
      voteCount: map['vote_count'].toInt() as int,
    );
  }
}
