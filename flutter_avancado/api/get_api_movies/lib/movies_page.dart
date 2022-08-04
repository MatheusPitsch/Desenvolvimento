import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_api_movies/movie_repository.dart';

class MoviesPage extends StatefulWidget {
  const MoviesPage({Key? key}) : super(key: key);

  @override
  State<MoviesPage> createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  
  MovieRepository repository = MovieRepository(Dio());

  @override
  void initState() {
    repository.getAllMovies();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movies'),
      ),
      body: Container(),
    );
  }
}
