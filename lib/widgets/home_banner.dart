import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:popcorn_time/data/events_data.dart';
import 'package:popcorn_time/pages/events_detailed_screen.dart';

import '../pages/notifications.dart';

class HomeBanner extends StatelessWidget {
  final String image;
  final String bannerTitle;
  final int index;
  const HomeBanner({
    required this.image,
    required this.bannerTitle,
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => EventsDetailedScreen(
              eventTitle: eventsDummyData[index]['title'],
              eventCover: eventsDummyData[index]['coverImage'],
              item: eventsDummyData[index]['item'],
              dateTime: eventsDummyData[index]['dateTime'],
              artist: eventsDummyData[index]['artist'],
              location: eventsDummyData[index]['location'],
              category: eventsDummyData[index]['category'],),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                image,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              bannerTitle,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
