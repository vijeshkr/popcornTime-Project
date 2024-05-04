import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:popcorn_time/constants/apptheme.dart';
import 'package:popcorn_time/constants/search_events.dart';
import 'package:popcorn_time/pages/home_screen.dart';
import 'package:popcorn_time/pages/shows_screen.dart';
import 'package:popcorn_time/pages/sports_screen.dart';
import '../data/events_data.dart';
import '../models/events_shows_model.dart';


class EventsScreen extends StatefulWidget {
  const EventsScreen({super.key});

  @override
  State<EventsScreen> createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 60.h,
        // automaticallyImplyLeading: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
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
                delegate:EventsCustomSearch(eventsData: eventsDummyData),);
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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ShowsScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: AppTheme.splash, // Text color
                    padding: const EdgeInsets.symmetric(
                        horizontal: 70, vertical: 10).h, // Padding
                    shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(10).r, // BorderRadius// Border
                    ),
                    elevation: 0, // Elevation
                  ),
                  child: Text('Shows'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const SportsScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: AppTheme.splash, // Text color
                    padding: const EdgeInsets.symmetric(
                        horizontal: 70, vertical: 10).h, // Padding
                    shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(10).r, // BorderRadius// Border
                    ),
                    elevation: 0, // Elevation
                  ),
                  child: const Text('Sports'),
                ),

              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: EventsShowsList(
                events: eventsDummyData.cast<Map<String, dynamic>>(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
