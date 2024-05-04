import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:popcorn_time/constants/apptheme.dart';
import 'package:popcorn_time/constants/filters.dart';
import 'package:popcorn_time/constants/search_upcoming.dart';
import 'package:popcorn_time/pages/home_screen.dart';
import '../data/movie_data.dart';
import '../models/movie_shows_model.dart';
import 'movie_screen.dart';

String languageFilter = '';
String genreFilter = '';

class UpcomingMovies extends StatefulWidget {
  UpcomingMovies({super.key});

  @override
  State<UpcomingMovies> createState() => _UpcomingMoviesState();
}

class _UpcomingMoviesState extends State<UpcomingMovies> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    List movieDataFilteredUp = [];
    for (var data in movieDataUp) {
      if (languageFilter != '' && genreFilter != '') {
        if (data['language'] == languageFilter &&
            data['genre'].contains(genreFilter)) {
          movieDataFilteredUp.add(data);
        }
      } else if (genreFilter != '') {
        if (data['genre'].contains(genreFilter)) {
          movieDataFilteredUp.add(data);
        }
      } else if (languageFilter != '') {
        if (data['language'] == languageFilter) {
          movieDataFilteredUp.add(data);
        }
      } else {
        movieDataFilteredUp.add(data);
      }
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.greyColor,
        toolbarHeight: 60.h,
        // automaticallyImplyLeading: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Upcoming Movies',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Text(
                  myLocation,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  width: 8.h,
                ),
                Text(
                  '${movieDataFilteredUp.length} Movies',
                  style: const TextStyle(
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
                delegate:CustomSearchUpcomingMovies(),);
            },
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
           SizedBox(
            width: 10.h,
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(5).h,
            height: 45.h,
            width: size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 7,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 10).h,
                  child: OutlinedButton(
                    onPressed: () {
                      setState(() {
                        if(index == 0){
                          languageFilter = '';
                        }else if(index == 1){
                          setState(() {
                            languageFilter = 'Malayalam';
                          });
                        }else if (index == 2){
                          setState(() {
                            languageFilter = 'Tamil';
                          });
                        }else if(index == 3){
                          setState(() {
                            languageFilter = 'English';
                          });
                        }else if(index == 4){
                          setState(() {
                            languageFilter = 'Hindi';
                          });
                        }else if(index == 5){
                          setState(() {
                            languageFilter = 'Telugu';
                          });
                        }else if( index == 6){
                          setState(() {
                            languageFilter = 'Kannada';
                          });
                        }
                      });
                    },
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        color: AppTheme
                            .splash, // Change the color to your desired outline color
                        width: 1, // Adjust the width as needed
                      ),
                    ),
                    child: languages[index],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5).h,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MovieScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: AppTheme.splash, // Text color
                padding: const EdgeInsets.symmetric(
                    horizontal: 100, vertical: 10).h, // Padding
                shape: RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.circular(10.r), // BorderRadius// Border
                ),
                elevation: 0, // Elevation
              ),
              child: const Text('Now Showing'),
            ),
          ),
          Expanded(
            child: MovieShowsList(
              movies: movieDataFilteredUp.cast<Map<String, dynamic>>(),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5).h,
            height: 45.h,
            width: size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 10).r,
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
                    },
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        color: AppTheme
                            .splash, // Change the color to your desired outline color
                        width: 1, // Adjust the width as needed
                      ),
                    ),
                    child: genres[index],
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
