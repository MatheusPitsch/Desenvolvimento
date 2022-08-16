import 'package:clean_movie_app/src/data/datasources/get_all_trending_movies_datasource.dart';
import 'package:clean_movie_app/src/domain/entities/movie_entity.dart';
import 'package:clean_movie_app/src/domain/repositories/get_all_trending_movies_repository.dart';

class GetAllTrendingMoviesRepositoryImp implements GetAllTrendingMoviesRepository {
  final GetAllTrendingMoviesDatasource _datasource;
  GetAllTrendingMoviesRepositoryImp(this._datasource);

  @override
  Future<List<MovieEntity>> getAllTrendingMovies(String timeWindow) async {
    return await _datasource.getAllTrendingMovies(timeWindow);
  }
}
