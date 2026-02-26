import 'package:flutter/material.dart';

class MovieInfo extends StatelessWidget {
  final String movieName;
  final String date;
  const MovieInfo({super.key, required this.date, required this.movieName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(movieName, style: TextStyle(color: Colors.white)),
          ),
          Text(date, style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
