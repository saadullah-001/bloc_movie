import 'package:flutter/material.dart';
import 'movie_screen_widgets.dart';

class MainContainer extends StatelessWidget {
  final String movieName;
  final String movieImage;
  final String date;

  const MainContainer({
    super.key,
    required this.movieName,
    required this.movieImage,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(11),
      ),
      child: Column(
        children: [
          Expanded(flex: 4, child: MyCachedNetworkImage(image: movieImage)),
          Expanded(
            flex: 1,
            child: MovieInfo(movieName: movieName, date: date),
          ),
        ],
      ),
    );
  }
}
