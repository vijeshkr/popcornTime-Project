import 'package:flutter/material.dart';
import 'package:popcorn_time/constants/apptheme.dart';
import 'package:popcorn_time/constants/filters.dart';
import 'package:popcorn_time/pages/movie_screen.dart';
import 'package:popcorn_time/pages/shows_screen.dart';
import 'package:popcorn_time/pages/sports_screen.dart';
import 'package:popcorn_time/widgets/movies_screen_model.dart';

import '../constants/app_icons.dart';
import '../widgets/home_banner.dart';

class EventsScreen extends StatefulWidget {
  const EventsScreen({super.key});

  @override
  State<EventsScreen> createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
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
              'Experience begins here',
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
                  height: 250,
                  width: size.width,
                  child: HomeBanner(
                    image: edSheeran,
                    bannerTitle: edSheeranTitle,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ShowsScreen(),
                        ),
                      );
                    },
                    child: Text('Shows'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: AppTheme.splash, // Text color
                      padding: EdgeInsets.symmetric(
                          horizontal: 50, vertical: 15), // Padding
                      shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(10), // BorderRadius// Border
                      ),
                      elevation: 5, // Elevation
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => SportsScreen(),
                        ),
                      );
                    },
                    child: Text('Sports'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: AppTheme.splash, // Text color
                      padding: EdgeInsets.symmetric(
                          horizontal: 50, vertical: 15), // Padding
                      shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(10), // BorderRadius// Border
                      ),
                      elevation: 5, // Elevation
                    ),
                  ),

                ],
              ),
              SizedBox(
                height: 15,
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
