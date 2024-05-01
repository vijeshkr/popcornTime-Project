import 'package:flutter/material.dart';
import 'package:popcorn_time/pages/events_detailed_screen.dart';

class EventsCustomSearch extends SearchDelegate {
  List eventsData;
  EventsCustomSearch({required this.eventsData});


@override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List matchQuery = [];
    for (var item in eventsData) {
      if (item['title'].toLowerCase().contains(
            query.toLowerCase(),
          )) {
        matchQuery.add(item);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EventsDetailedScreen(
                      eventTitle: matchQuery[index]['title'],
                      eventCover: matchQuery[index]['coverImage'],
                      item: matchQuery[index]['item'],
                      dateTime: matchQuery[index]['dateTime'],
                      artist: matchQuery[index]['artist'],
                      location: matchQuery[index]['location'],
                      category: matchQuery[index]['category'],
                      event: matchQuery[index]['event'],
                      imageUrl: matchQuery[index]['image'],
                  ),
                ),
              );
            },
            title: Text(result['title']),
          );
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    List matchQuery = [];
    for (var item in eventsData) {
      if (item['title'].toLowerCase().contains(
            query.toLowerCase(),
          )) {
        matchQuery.add(item);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EventsDetailedScreen(
                      eventTitle: matchQuery[index]['title'],
                      eventCover: matchQuery[index]['coverImage'],
                      item: matchQuery[index]['item'],
                      dateTime: matchQuery[index]['dateTime'],
                      artist: matchQuery[index]['artist'],
                      location: matchQuery[index]['location'],
                      category: matchQuery[index]['category'],
                      event: matchQuery[index]['event'],
                    imageUrl: matchQuery[index]['image'],
                  ),
                ),
              );
            },
            title: Text(result['title']),
          );
        });
  }
}
