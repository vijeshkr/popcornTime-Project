import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:popcorn_time/constants/apptheme.dart';
import '../constants/search_events.dart';
import '../data/events_data.dart';
import '../models/events_shows_model.dart';

class ShowsScreen extends StatefulWidget {
  const ShowsScreen({super.key});

  @override
  State<ShowsScreen> createState() => _ShowsScreenState();
}

class _ShowsScreenState extends State<ShowsScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.greyColor,
        toolbarHeight: 70.h,
        // automaticallyImplyLeading: false,
        title: Text(
          'Shows',
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context,
                delegate:EventsCustomSearch(eventsData: eventsDummyDataShow),);
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
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: EventsShowsList(
          events: eventsDummyDataShow.cast<Map<String, dynamic>>(),
        ),
      ),
    );
  }
}
