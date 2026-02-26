import 'package:bloc_movies/dependency_injection/dependency_injection.dart';
import 'package:bloc_movies/dependency_injection/locator.dart';
import 'package:bloc_movies/utils/enums/enums.dart';
import 'package:bloc_movies/views/movie_screen/widget/my_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MovieScreen extends StatefulWidget {
  const MovieScreen({super.key});

  @override
  State<MovieScreen> createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          MovieBloc(repository: getIt<MovieHttpApiRepository>())
            ..add(OnScreenStart()),
      child: BlocConsumer<MovieBloc, MovieState>(
        listener: (context, state) {
          if (state.response.status == ApiStatus.error) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text("Something went wrong")));
          }
        },
        builder: (context, state) {
          switch (state.response.status) {
            case ApiStatus.loading:
              return const Scaffold(
                body: Center(child: CircularProgressIndicator()),
              );

            case ApiStatus.completed:
              final movies = state.response.data?.tvShows ?? [];

              return Scaffold(
                appBar: AppBar(title: const Text("Movies")),
                body: SafeArea(
                  child: Container(
                    color: const Color.fromARGB(255, 17, 17, 17),
                    child: GridView.builder(
                      padding: const EdgeInsets.all(10),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: 0.85,
                          ),
                      itemCount: movies.length,
                      itemBuilder: (context, index) {
                        final movie = movies[index];
                        return MainContainer(
                          date: movie.startDate?.year.toString() ?? '',
                          movieImage: movie.image,
                          movieName: movie.name,
                        );
                      },
                    ),
                  ),
                ),
              );

            case ApiStatus.error:
              return const Scaffold(
                body: Center(child: Text("Failed to load movies")),
              );

            default:
              return const SizedBox();
          }
        },
      ),
    );
  }
}
