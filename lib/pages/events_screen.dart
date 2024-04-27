import 'package:flutter/material.dart';
import 'package:popcorn_time/constants/apptheme.dart';
import 'package:popcorn_time/constants/filters.dart';
import 'package:popcorn_time/constants/search_events.dart';
import 'package:popcorn_time/pages/home_screen.dart';
import 'package:popcorn_time/pages/movie_screen.dart';
import 'package:popcorn_time/pages/shows_screen.dart';
import 'package:popcorn_time/pages/sports_screen.dart';

import '../constants/app_icons.dart';
import '../data/events_data.dart';
import '../data/movie_data.dart';
import '../models/events_shows_model.dart';
import '../models/movie_shows_model.dart';
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
        // automaticallyImplyLeading: false,
        title: Column(
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
                  myLocation,
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
                delegate:EventsCustomSearch(eventsData: eventsDummyData),);
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
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 15,),
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
            Expanded(
              child: EventsShowsList(
                events: eventsDummyData.cast<Map<String, dynamic>>(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
