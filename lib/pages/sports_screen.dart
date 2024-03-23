import 'package:flutter/material.dart';
import 'package:popcorn_time/constants/apptheme.dart';
import 'package:popcorn_time/constants/filters.dart';
import 'package:popcorn_time/pages/upcoming_movies.dart';
import 'package:popcorn_time/widgets/movies_screen_model.dart';

import '../constants/app_icons.dart';

class SportsScreen extends StatefulWidget {
  const SportsScreen({super.key});

  @override
  State<SportsScreen> createState() => _SportsScreenState();
}

class _SportsScreenState extends State<SportsScreen> {
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
              'Sports',
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
                  '10 Events',
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


              Row(
                children: [
                  MovieShows(
                    show: movies[0].bannerUrl,
                    showTitle: movies[0].title,
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
