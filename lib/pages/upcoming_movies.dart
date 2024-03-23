import 'package:flutter/material.dart';
import 'package:popcorn_time/constants/apptheme.dart';
import 'package:popcorn_time/constants/filters.dart';
import 'package:popcorn_time/pages/movie_screen.dart';
import 'package:popcorn_time/widgets/movies_screen_model.dart';

import '../constants/app_icons.dart';

class UpcomingMovies extends StatefulWidget {
  const UpcomingMovies({super.key});

  @override
  State<UpcomingMovies> createState() => _UpcomingMoviesState();
}

class _UpcomingMoviesState extends State<UpcomingMovies> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.greyColor,
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Upcoming Movies',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Text(
                  'Ernakulam',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  '20 Movies',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 55,
                  width: size.width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: OutlinedButton(
                          onPressed: () {
                            print(index);
                          },
                          child: languages[index],
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(
                              color: AppTheme
                                  .splash, // Change the color to your desired outline color
                              width: 1.0, // Adjust the width as needed
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => MovieScreen(),
                      ),
                    );
                  },
                  child: Text('Now Showing'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: AppTheme.splash, // Text color
                    padding: EdgeInsets.symmetric(
                        horizontal: 100, vertical: 15), // Padding
                    shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(10), // BorderRadius// Border
                    ),
                    elevation: 5, // Elevation
                  ),
                ),
              ),
              Row(
                children: [
                  MovieShows(
                    show: show2,
                    showTitle: showTitle2,
                  ),
                  MovieShows(
                    show: show2,
                    showTitle: showTitle2,
                  ),
                ],
              ),
              Row(
                children: [
                  MovieShows(
                    show: show2,
                    showTitle: showTitle2,
                  ),
                  MovieShows(
                    show: show2,
                    showTitle: showTitle2,
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 55,
                width: size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 9,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: OutlinedButton(
                        onPressed: () {
                          print(index);
                        },
                        child: genres[index],
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(
                            color: AppTheme
                                .splash, // Change the color to your desired outline color
                            width: 1.0, // Adjust the width as needed
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Row(
                children: [
                  MovieShows(
                    show: show2,
                    showTitle: showTitle2,
                  ),
                  MovieShows(
                    show: show2,
                    showTitle: showTitle2,
                  ),
                ],
              ),
              Row(
                children: [
                  MovieShows(
                    show: show2,
                    showTitle: showTitle2,
                  ),
                  MovieShows(
                    show: show2,
                    showTitle: showTitle2,
                  ),
                ],
              ),
              Row(
                children: [
                  MovieShows(
                    show: show2,
                    showTitle: showTitle2,
                  ),
                  MovieShows(
                    show: show2,
                    showTitle: showTitle2,
                  ),
                ],
              ),
              Row(
                children: [
                  MovieShows(
                    show: show2,
                    showTitle: showTitle2,
                  ),
                  MovieShows(
                    show: show2,
                    showTitle: showTitle2,
                  ),
                ],
              ),
              Row(
                children: [
                  MovieShows(
                    show: show1,
                    showTitle: showTitle1,
                  ),
                  MovieShows(
                    show: show2,
                    showTitle: showTitle2,
                  ),
                ],
              ),
              Row(
                children: [
                  MovieShows(
                    show: show1,
                    showTitle: showTitle1,
                  ),
                  MovieShows(
                    show: show2,
                    showTitle: showTitle2,
                  ),
                ],
              ),
              Row(
                children: [
                  MovieShows(
                    show: show1,
                    showTitle: showTitle1,
                  ),
                  MovieShows(
                    show: show2,
                    showTitle: showTitle2,
                  ),
                ],
              ),
              Row(
                children: [
                  MovieShows(
                    show: show1,
                    showTitle: showTitle1,
                  ),
                  MovieShows(
                    show: show2,
                    showTitle: showTitle2,
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
