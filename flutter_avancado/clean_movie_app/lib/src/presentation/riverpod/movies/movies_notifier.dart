import 'package:clean_movie_app/src/domain/entities/movie_entity.dart';
import 'package:clean_movie_app/src/domain/usecases/get_all_trending_movies/get_all_trending_movies_usecase.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MoviesNotifier extends StateNotifier<List<MovieEntity>> {
  MoviesNotifier(this._usecase) : super([]) {
    getAllTrendingMovies('day');
  }

  final GetAllTrendingMoviesUsecase _usecase;

  Future<void> getAllTrendingMovies(String timeWindow) async {
    state = await _usecase.getAllTrendingMovies(timeWindow);
  }
}
