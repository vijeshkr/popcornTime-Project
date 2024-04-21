import 'package:flutter/material.dart';
import 'package:popcorn_time/pages/details_screen.dart';

class EventsShowsModel extends StatelessWidget {
  final String title;
  final String bannerUrl;
  final String coverImage;
  final String item;
  final String dateTime;
  final String artist;
  final String location;
  final String category;

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
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          child: GestureDetector(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => DetailsScreen(
              //       movieTitle: title,
              //       movieCover: coverImage,
              //       like: like,
              //       language: language,
              //       screen_2D: screen_2D,
              //       genre: genre,
              //       release: release,
              //       description: description,
              //     ),
              //   ),
              // );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    bannerUrl,
                    height: 180,
                    width: 130,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  width: 120,
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
                // Container(
                //   child: Row(
                //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       const Icon(
                //         Icons.favorite,
                //         color: Colors.red,
                //       ),
                //       const SizedBox(
                //         width: 15,
                //       ),
                //       Text(
                //         "$like %",
                //         style: const TextStyle(fontSize: 13),
                //       )
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
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
    return Padding(
      padding: const EdgeInsets.only(left: 22),
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
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
          );
        }),
      ),
    );
  }
}
