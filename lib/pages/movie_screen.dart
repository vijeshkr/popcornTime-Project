import 'package:flutter/material.dart';
import 'package:popcorn_time/constants/apptheme.dart';
import 'package:popcorn_time/constants/filters.dart';
import 'package:popcorn_time/pages/upcoming_movies.dart';
import '../constants/app_icons.dart';
import '../constants/search_movies.dart';
import '../data/movie_data.dart';
import '../models/movie_shows_model.dart';

String languageFilter = '';
String genreFilter = '';

class MovieScreen extends StatefulWidget {
  MovieScreen({super.key});

  @override
  State<MovieScreen> createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    List movieDataFiltered = [];
    for (var data in movieDataNow) {
      if (languageFilter != '' && genreFilter != '') {
        if (data['language'] == languageFilter &&
            data['genre'].contains(genreFilter)) {
          movieDataFiltered.add(data);
        }
      } else if (genreFilter != '') {
        if (data['genre'].contains(genreFilter)) {
          movieDataFiltered.add(data);
        }
      } else if (languageFilter != '') {
        if (data['language'] == languageFilter) {
          movieDataFiltered.add(data);
        }
      } else {
        movieDataFiltered.add(data);
      }
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.greyColor,
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Now Showing',
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
                  'Movies',
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
            onPressed: () {
              showSearch(context: context,
                delegate:CustomSearch(),);
            },
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
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            height: 55,
            width: size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 7,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: OutlinedButton(
                    onPressed: () {
                      setState(() {
                        if (index == 0) {
                          languageFilter = '';
                        } else if (index == 1) {
                          setState(() {
                            languageFilter = 'Malayalam';
                          });
                        } else if (index == 2) {
                          setState(() {
                            languageFilter = 'Tamil';
                          });
                        } else if (index == 3) {
                          setState(() {
                            languageFilter = 'English';
                          });
                        } else if (index == 4) {
                          setState(() {
                            languageFilter = 'Hindi';
                          });
                        } else if (index == 5) {
                          setState(() {
                            languageFilter = 'Telugu';
                          });
                        } else if (index == 6) {
                          setState(() {
                            languageFilter = 'Kannada';
                          });
                        }
                      });
                      print(languageFilter);
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
          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => UpcomingMovies(),
                  ),
                );
              },
              child: Text('Upcoming Movies'),
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
          Expanded(
            child: MovieShowsList(
              movies: movieDataFiltered.cast<Map<String, dynamic>>(),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            height: 55,
            width: size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: OutlinedButton(
                    onPressed: () {
                      setState(() {
                        if (index == 0) {
                          genreFilter = '';
                        } else if (index == 1) {
                          setState(() {
                            genreFilter = 'Action';
                          });
                        } else if (index == 2) {
                          setState(() {
                            genreFilter = 'Drama';
                          });
                        } else if (index == 3) {
                          setState(() {
                            genreFilter = 'Thriller';
                          });
                        } else if (index == 4) {
                          setState(() {
                            genreFilter = 'Comedy';
                          });
                        } else if (index == 5) {
                          setState(() {
                            genreFilter = 'Crime';
                          });
                        } else if (index == 6) {
                          setState(() {
                            genreFilter = 'Horror';
                          });
                        } else if (index == 7) {
                          setState(() {
                            genreFilter = 'Romance';
                          });
                        } else if (index == 8) {
                          setState(() {
                            genreFilter = 'Biography';
                          });
                        } else if (index == 9) {
                          setState(() {
                            genreFilter = 'Sci-fi';
                          });
                        }
                      });
                      print(genreFilter);
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
        ],
      ),
    );
  }
}
