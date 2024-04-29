import 'package:flutter/material.dart';
import 'package:popcorn_time/pages/details_screen.dart';
import '../data/movie_data.dart';

class CustomSearchUpcomingMovies extends SearchDelegate {
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
    for (var item in movieDataUp) {
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
                  builder: (context) => DetailsScreen(
                    movieTitle: matchQuery[index]['title'],
                    like: matchQuery[index]['likes'],
                    movieCover: matchQuery[index]['coverImage'],
                    language: matchQuery[index]['language'],
                    screen_2D: matchQuery[index]['2D'],
                    genre: matchQuery[index]['genre'],
                    release: matchQuery[index]['release'],
                    description: matchQuery[index]['description'],
                    duration: matchQuery[index]['duration'],
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
    for (var item in movieDataUp) {
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
                  builder: (context) => DetailsScreen(
                    movieTitle: matchQuery[index]['title'],
                    like: matchQuery[index]['likes'],
                    movieCover: matchQuery[index]['coverImage'],
                    language: matchQuery[index]['language'],
                    screen_2D: matchQuery[index]['2D'],
                    genre: matchQuery[index]['genre'],
                    release: matchQuery[index]['release'],
                    description: matchQuery[index]['description'],
                    duration: matchQuery[index]['duration'],
                  ),
                ),
              );
            },
            title: Text(result['title']),
          );
        });
  }
}
