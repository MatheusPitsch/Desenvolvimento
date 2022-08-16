import 'package:clean_movie_app/src/domain/entities/movie_entity.dart';
import 'package:clean_movie_app/src/domain/repositories/get_all_trending_movies_repository.dart';
import 'package:clean_movie_app/src/domain/usecases/get_all_trending_movies/get_all_trending_movies_usecase.dart';

class GetAllTrendingMoviesUsecaseImp implements GetAllTrendingMoviesUsecase {
  final GetAllTrendingMoviesRepository _repository;
  GetAllTrendingMoviesUsecaseImp(this._repository);

  @override
  Future<List<MovieEntity>> getAllTrendingMovies(String timeWindow) async {
    return await _repository.getAllTrendingMovies(timeWindow);
  }
}
