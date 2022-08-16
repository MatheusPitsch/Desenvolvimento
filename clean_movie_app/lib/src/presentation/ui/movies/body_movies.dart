import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/entities/movie_entity.dart';
import '../../riverpod/movies/movies_provider.dart';
import 'card_movies.dart';

class BodyMovies extends HookConsumerWidget {
  const BodyMovies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movies = ref.watch(moviesNotifierProvider);
    return Visibility(
      visible: movies.isNotEmpty,
      replacement: const CircularProgressIndicator(),
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 400,
          crossAxisSpacing: 10,
          crossAxisCount: 2,.
          childAspectRatio: 0.95,
        ),
        itemCount: movies.length,
        itemBuilder: (context, index) {
          MovieEntity movie = movies[index];
          return CardMovie(movie: movie);
        },
      ),
    );
  }
}
