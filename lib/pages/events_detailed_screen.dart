import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:popcorn_time/constants/apptheme.dart';
import 'package:popcorn_time/pages/sports_seats_screen.dart';

class EventsDetailedScreen extends StatelessWidget {
  String eventTitle;
  String eventCover;
  String item;
  String dateTime;
  String artist;
  String location;
  String category;
  EventsDetailedScreen({
    super.key,
    required this.eventTitle,
    required this.eventCover,
    required this.item,
    required this.dateTime,
    required this.artist,
    required this.location,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: AppTheme.statusBar,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
            ),
            expandedHeight: 220.h,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      eventCover,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              color: Color(0xfff5f5fa),
              padding: const EdgeInsets.all(20).r,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.white,
                    width: double.maxFinite,
                    padding: EdgeInsets.all(20).r,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          eventTitle,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18.sp,
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          location,
                          style: TextStyle(color: Colors.black45),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Row(
                          children: [
                            Text(
                              item,
                              style: TextStyle(color: Colors.black45),
                            ),
                            SizedBox(
                              width: 15.h,
                            ),
                            Text(
                              artist,
                              style: TextStyle(color: Colors.black45),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          dateTime,
                          style: TextStyle(color: Colors.black45),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Container(
                    width: double.maxFinite,
                    color: Colors.yellow.shade100,
                    padding: const EdgeInsets.all(20).r,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Important Note',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          '1. The event is free seating. First come first serve basis.',
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          '2. Ticket required for 2+ years',
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          '3. Parking is not available at the venue.',
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          '4. No re-entry is allowed.',
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(10).r,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              EdgeInsets.symmetric(vertical: 12).h,
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SportsBookingScreen(
                    eventTitle: eventTitle,
                    eventCover: eventCover,
                    item: item,
                    dateTime: dateTime,
                    artist: artist,
                    location: location,
                    category: category),
              ),
            );
          },
          child: Text(
            'Book tickets',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
