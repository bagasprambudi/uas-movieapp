import 'package:flutter/material.dart';
import 'package:project_uas/model/movie_model.dart';

import 'background_movie.dart';
import 'movie_info.dart';

class MovieDetails extends StatelessWidget {
  MovieModel model;
  MovieDetails(this.model);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BackgroundMovie(
              imageUrl: model.backdropPath,
            ),
            MovieInfo(
              title: model.title,
              voteAverage: model.voteAverage,
              overview: model.overview,
            ),
          ],
        ),
      ),
    );
  }
}
