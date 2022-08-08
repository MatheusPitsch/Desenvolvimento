import 'package:dio/dio.dart';
import 'package:exersice_api/api_model.dart';
import 'package:exersice_api/api_repository.dart';
import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  int indexPage;

  PageTwo({
    Key? key,
    required this.indexPage,
  }) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  MovieRepository repository = MovieRepository(Dio());

  late Future<List<MovieModel>> movies;

  @override
  void initState() {
    movies = repository.getAllMovies();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        child: FutureBuilder(
          future: movies,
          builder: (context, AsyncSnapshot<List<MovieModel>> snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  MovieModel movie = snapshot.data![index];
                  return Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        movie.description,
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  );
                },
              );
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
