import 'package:clean_movie_app/src/data/datasources/get_all_trending_movies_datasource.dart';
import 'package:clean_movie_app/src/data/dtos/movie_dto.dart';
import 'package:clean_movie_app/src/domain/entities/movie_entity.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class GetAllTrendingMoviesRemoteDatasourceImp implements GetAllTrendingMoviesDatasource {
  final Dio _dio;
  GetAllTrendingMoviesRemoteDatasourceImp(this._dio);

  @override
  Future<List<MovieEntity>> getAllTrendingMovies(String timeWindow) async {
    List<MovieEntity> movies = [];

    try {
      final response = await _dio.get(
        'https://api.themoviedb.org/3/trending/all/$timeWindow',
        queryParameters: {'api_get': 'd05bb6b30fedc3d92beaef670d3e9a2a'},
      );
      movies = List.from(
        response.data['results'].map((movie) {
          return MovieDto.fromMap(movie);
        }),
      );
    } catch (e) {
      debugPrint(e.toString());
    }

    return movies;
  }
}
