import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:popcorn_time/data/events_data.dart';
import 'package:popcorn_time/pages/events_detailed_screen.dart';

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
              category: eventsDummyData[index]['category'],
              event: eventsDummyData[index]['event'],
              imageUrl: eventsDummyData[index]['image'],
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(10).h,
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.95,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10).r,
                child: Image.asset(
                  width: MediaQuery.of(context).size.width * 0.95,
                  image,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                bannerTitle,
                style:
                    const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
    );
  }
}
