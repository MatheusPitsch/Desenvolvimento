import 'package:dio/dio.dart';
import 'package:exersice_api/api_model.dart';
import 'package:exersice_api/api_repository.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      body: Center(
        child: FutureBuilder(
          future: movies,
          builder: (context, AsyncSnapshot<List<MovieModel>> snapshot) {
            if (snapshot.hasData) {
              return 
              ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  MovieModel movie = snapshot.data![0];
                  return Column(
                    children: [
                      Container(
                        child: Image.network(movie.movieBanner),
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
