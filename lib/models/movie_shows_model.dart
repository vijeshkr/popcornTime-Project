import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:popcorn_time/pages/detailed_screen_for_upcoming_movies.dart';
import 'package:popcorn_time/pages/details_screen.dart';

import '../constants/apptheme.dart';

class MovieShowsModel extends StatelessWidget {
  final String title;
  final int like;
  final String bannerUrl;
  final String coverImage;
  final String language;
  final String screen_2D;
  final List genre;
  final String release;
  final String description;
  final String duration;
  final String now;
  final Map castCrew;

  const MovieShowsModel({
    Key? key,
    required this.title,
    required this.like,
    required this.bannerUrl,
    required this.coverImage,
    required this.language,
    required this.screen_2D,
    required this.genre,
    required this.release,
    required this.description,
    required this.duration,
    required this.now,
    required this.castCrew,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10).h,
      child: GestureDetector(
        onTap: () {
          if(now == 'now'){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(
                  movieTitle: title,
                  movieCover: coverImage,
                  like: like,
                  language: language,
                  screen_2D: screen_2D,
                  genre: genre,
                  release: release,
                  description: description,
                  duration: duration,
                  movieImage: bannerUrl,
                  castCrew: castCrew,
                ),
              ),
            );
          }else{
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreenUpcomingMovies(
                  movieTitle: title,
                  movieCover: coverImage,
                  like: like,
                  language: language,
                  screen_2D: screen_2D,
                  genre: genre,
                  release: release,
                  description: description,
                  duration: duration,
                  castCrew: castCrew,
                ),
              ),
            );
          }
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10).r,
              child: Image.asset(
                bannerUrl,
                height: 250.h,
                width: 190.h,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Container(
                width: 190.h,
                decoration: BoxDecoration(
                  color: AppTheme.lightblue,
                  borderRadius: BorderRadius.circular(10).r,
                ),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 5.h,
                    ),
                    const Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 15,
                    ),
                    SizedBox(
                      width: 5.h,
                    ),
                    Text(
                      "${like/10}/10",
                      style: const TextStyle(fontSize: 13),
                    )
                  ],
                )
            ),
            Padding(
              padding: const EdgeInsets.all(8.0).h,
              child: SizedBox(
                width: 190.h,
                child: Text(
                  title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  // softWrap: true,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MovieShowsList extends StatefulWidget {
  final List<Map<String, dynamic>> movies;

  const MovieShowsList({
    Key? key,
    required this.movies,
  }) : super(key: key);

  @override
  State<MovieShowsList> createState() => _MovieShowsListState();
}

class _MovieShowsListState extends State<MovieShowsList> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 0,
      mainAxisSpacing: 0,
      childAspectRatio: 0.61,
      // Adjust the aspect ratio as needed
      children: List.generate(widget.movies.length, (index) {
        final movie = widget.movies[index];
        return MovieShowsModel(
          title: movie['title'],
          like: movie['likes'],
          bannerUrl: movie['image'],
          coverImage: movie['coverImage'],
          language: movie['language'],
          screen_2D: movie['2D'],
          genre: List<String>.from(movie['genre']),
          release: movie['release'],
          description: movie['description'],
          duration: movie['duration'],
          now: movie['now'],
          castCrew: movie['castCrew'],
        );
      }),
    );
  }
}
