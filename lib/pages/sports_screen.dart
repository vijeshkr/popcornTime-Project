import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:popcorn_time/constants/apptheme.dart';
import '../constants/search_events.dart';
import '../data/events_data.dart';
import '../models/events_shows_model.dart';

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
        toolbarHeight: 70.h,
        // automaticallyImplyLeading: false,
        title: Text(
          'Sports',
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context,
                delegate:EventsCustomSearch(eventsData: eventsDummyDataSports),);
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
      body: EventsShowsList(
        events: eventsDummyDataSports.cast<Map<String, dynamic>>(),
      ),
    );
  }
}
