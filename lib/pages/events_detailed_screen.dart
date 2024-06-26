import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:popcorn_time/constants/apptheme.dart';
import 'package:popcorn_time/models/events_seat_bottom.dart';
import 'package:popcorn_time/pages/sports_seats_screen.dart';

class EventsDetailedScreen extends StatelessWidget {
  String eventTitle;
  String imageUrl;
  String eventCover;
  String item;
  String dateTime;
  String artist;
  String location;
  String category;
  String event;
  EventsDetailedScreen({
    super.key,
    required this.eventTitle,
    required this.imageUrl,
    required this.eventCover,
    required this.item,
    required this.dateTime,
    required this.artist,
    required this.location,
    required this.category,
    required this.event,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              leading: IconButton(
                color: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
              ),
              expandedHeight: 260.h,
              flexibleSpace: FlexibleSpaceBar(
                background: Padding(
                  padding: const EdgeInsets.all(10).h,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10).r,
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
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.all(20).h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.maxFinite,
                      padding: const EdgeInsets.all(20).h,
                      decoration: BoxDecoration(
                        color: AppTheme.lightblue,
                        borderRadius: BorderRadius.circular(10).r,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            eventTitle,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                           SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            location,
                            style: const TextStyle(color: Colors.black45),
                          ),
                           SizedBox(
                            height: 5.h,
                          ),
                          Row(
                            children: [
                              Text(
                                item,
                                style: const TextStyle(color: Colors.black45),
                              ),
                               SizedBox(
                                width: 15.h,
                              ),
                              Text(
                                artist,
                                style: const TextStyle(color: Colors.black45),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            dateTime,
                            style: const TextStyle(color: Colors.black45),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Colors.yellow.shade100,
                        borderRadius: BorderRadius.circular(10).r,
                      ),
                      padding: const EdgeInsets.all(20).h,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Important Note',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          const Text(
                            '1. The event is free seating. First come first serve basis.',
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          const Text(
                            '2. Ticket required for 2+ years',
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          const Text(
                            '3. Parking is not available at the venue.',
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          const Text(
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
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10).h,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(AppTheme.splash),
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                const EdgeInsets.symmetric(vertical: 12).h,
              ),
            ),
            onPressed: () {
              if(event == 'Sports'){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SportsBookingScreen(
                        eventTitle: eventTitle,
                        imageUrl: imageUrl,
                        eventCover: eventCover,
                        item: item,
                        dateTime: dateTime,
                        artist: artist,
                        location: location,
                        category: category),
                  ),
                );
              }else{
                showModalBottomSheet(
                    context: context,
                    builder: (_) => EventsSeatBottom(
                      imageUrl: imageUrl,
                      confirmPlace: location,
                      confirmTitle: eventTitle,
                      confirmDate: dateTime,
                    ),
                    constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height * 0.35)
                );
              }

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
      ),
    );
  }
}
