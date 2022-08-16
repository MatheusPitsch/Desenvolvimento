import 'package:clean_movie_app/src/presentation/ui/movies/drawer_movies.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'body_movies.dart';

class MoviesPage extends StatelessWidget {
  const MoviesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerMovies(),
      appBar: AppBar(
        title: const Text('Movies'),
      ),
      body: const BodyMovies(),
    );
  }
}
