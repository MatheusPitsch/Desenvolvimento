import 'package:clean_movie_app/src/data/datasources/get_all_trending_movies_datasource.dart';
import 'package:clean_movie_app/src/data/repositories/get_all_trending_movies_repository_imp.dart';
import 'package:clean_movie_app/src/domain/usecases/get_all_trending_movies/get_all_trending_movies_usecase_imp.dart';
import 'package:clean_movie_app/src/presentation/riverpod/movies/movies_notifier.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final dioProvider = Provider((ref) => Dio());

final moviesDatasourceProvider



final moviesRepositoryProvider = Provider(
  ((ref) {
    return GetAllTrendingMoviesRepositoryImp(_datasource);
  }),
);

final moviesUseCaseProvider = Provider((ref) {
  return GetAllTrendingMoviesUsecaseImp(_repository);
});

final MoviesNotifierProvider = StateNotifierProvider(
  (ref) {
    return MoviesNotifier(ref.watch(moviesUseCaseProvider));
  },
);
