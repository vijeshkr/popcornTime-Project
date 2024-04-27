import 'package:flutter/material.dart';
import 'package:popcorn_time/pages/details_screen.dart';

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
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          child: GestureDetector(
            onTap: () {
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
                  ),
                ),
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    bannerUrl,
                    height: 180,
                    width: 130,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  width: 120,
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
                Container(
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        "$like %",
                        style: const TextStyle(fontSize: 13),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
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
    return Padding(
      padding: const EdgeInsets.only(left: 22),
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        childAspectRatio: 0.7, // Adjust the aspect ratio as needed
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
          );
        }),
      ),
    );
  }
}
