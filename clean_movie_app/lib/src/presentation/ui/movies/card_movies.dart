import 'package:flutter/material.dart';

import '../../../../shared/format_date.dart';
import '../../../domain/entities/movie_entity.dart';

class CardMovie extends StatelessWidget {
  const CardMovie({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                'https://image.tmdb.org/t/p/w500/${movie.posterPath}',
              ),
            ),
            Positioned(
              left: 15,
              bottom: -15,
              child: CircleAvatar(
                backgroundColor: Colors.indigo,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    TweenAnimationBuilder(
                        tween: Tween<double>(
                          begin: 0.0,
                          end: movie.voteAverage / 10,
                        ),
                        duration: const Duration(seconds: 2),
                        builder: (context, double valueA, child) {
                          return CircularProgressIndicator(
                            value: valueA,
                          );
                        }),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('10'),
                        Text(
                          '%',
                          style: TextStyle(),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 22,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                movie.title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(formatDate(movie.releaseDate)),
            ],
          ),
        ),
      ],
    );
  }
}
