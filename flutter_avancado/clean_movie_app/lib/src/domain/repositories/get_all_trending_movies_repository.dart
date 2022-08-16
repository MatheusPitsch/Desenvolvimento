import 'package:clean_movie_app/src/domain/entities/movie_entity.dart';

abstract class GetAllTrendingMoviesRepository {
  Future<List<MovieEntity>> getAllTrendingMovies(String timeWindow);
}
