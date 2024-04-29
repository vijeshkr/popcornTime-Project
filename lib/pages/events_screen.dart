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
        backgroundColor: AppTheme.greyColor,
        toolbarHeight: 70.h,
        // automaticallyImplyLeading: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Experience begins here',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Text(
                  myLocation,
                  style: TextStyle(
                    fontSize: 14.sp,
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
            width: 10.w,
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 15.h,),
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
                        horizontal: 50, vertical: 15).r, // Padding
                    shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(10).r, // BorderRadius// Border
                    ),
                    elevation: 5, // Elevation
                  ),
                ),
                SizedBox(
                  width: 20.w,
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
                        horizontal: 50, vertical: 15).r, // Padding
                    shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(10).r, // BorderRadius// Border
                    ),
                    elevation: 5, // Elevation
                  ),
                ),

              ],
            ),
            SizedBox(
              height: 15.h,
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
