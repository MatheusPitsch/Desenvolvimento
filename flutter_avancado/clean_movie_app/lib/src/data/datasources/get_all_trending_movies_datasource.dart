import 'package:clean_movie_app/src/domain/entities/movie_entity.dart';

abstract class GetAllTrendingMoviesDatasource {
  Future<List<MovieEntity>> getAllTrendingMovies(String timeWindow);
}
