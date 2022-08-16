import 'package:clean_movie_app/src/domain/entities/movie_entity.dart';

abstract class GetAllTrendingMoviesUsecase {
  Future<List<MovieEntity>> getAllTrendingMovies(String timeWindow);
}
