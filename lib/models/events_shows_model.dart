import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../pages/events_detailed_screen.dart';

class EventsShowsModel extends StatelessWidget {
  final String title;
  final String bannerUrl;
  final String coverImage;
  final String item;
  final String dateTime;
  final String artist;
  final String location;
  final String category;
  final String event;

  const EventsShowsModel({
    Key? key,
    required this.title,
    required this.bannerUrl,
    required this.coverImage,
    required this.item,
    required this.dateTime,
    required this.artist,
    required this.location,
    required this.category,
    required this.event,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5).h,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EventsDetailedScreen(
                eventTitle: title,
                eventCover: coverImage,
                location: location,
                item: item,
                dateTime: dateTime,
                category: category,
                artist: artist,
                event: event,
                imageUrl: bannerUrl,

              ),
            ),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10).h,
              child: Image.asset(
                bannerUrl,
                height: 240.h,
                width: 190.h,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            SizedBox(
              width: 190.h,
              child: Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                // softWrap: true,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EventsShowsList extends StatefulWidget {
  final List<Map<String, dynamic>> events;

  const EventsShowsList({
    Key? key,
    required this.events,
  }) : super(key: key);

  @override
  State<EventsShowsList> createState() => _EventsShowsListState();
}

class _EventsShowsListState extends State<EventsShowsList> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: .0,
      mainAxisSpacing: 0,
      childAspectRatio: 0.7, // Adjust the aspect ratio as needed
      children: List.generate(widget.events.length, (index) {
        final event = widget.events[index];
        return EventsShowsModel(
          title: event['title'],
          bannerUrl: event['image'],
          coverImage: event['coverImage'],
          artist: event['artist'],
          category: event['category'],
          dateTime: event['dateTime'],
          item: event['item'],
          location: event['location'],
          event: event['event'],
        );
      }),
    );
  }
}
