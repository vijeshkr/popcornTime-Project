import 'package:flutter/material.dart';
import 'package:popcorn_time/constants/apptheme.dart';
import 'package:popcorn_time/widgets/movies_screen_model.dart';

import '../constants/app_icons.dart';
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
        toolbarHeight: 70,
        // automaticallyImplyLeading: false,
        title: Text(
          'Shows',
          style: TextStyle(
            fontSize: 20,
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
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body:  EventsShowsList(
        events: eventsDummyDataShow.cast<Map<String, dynamic>>(),
      ),
    );
  }
}
