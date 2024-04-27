import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:popcorn_time/constants/apptheme.dart';
import 'package:popcorn_time/pages/theatre_selection_screen.dart';

class DetailsScreen extends StatelessWidget {
  String movieTitle;
  String movieCover;
  String language;
  String screen_2D;
  int like;
  List genre;
  String release;
  String description;
  String duration;
  DetailsScreen(
      {super.key,
      required this.movieTitle,
      required this.movieCover,
      required this.like,
      required this.language,
      required this.screen_2D,
      required this.genre,
      required this.release,
      required this.description,
      required this.duration,
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
            expandedHeight: 220,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      movieCover,
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
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.white,
                    width: double.maxFinite,
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              movieTitle,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '$like %',
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'UA | $release',
                              style: TextStyle(color: Colors.black45),
                            ),
                            Text(
                              '2.4K votes',
                              style: TextStyle(color: Colors.red),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                // padding: EdgeInsets.only(left: 20, right: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      '$duration . ${genre[0]}, ${genre[1]}',
                                      style: TextStyle(color: Colors.black45),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '$language',
                                          style: TextStyle(color: Colors.red),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.red.withOpacity(0.2),
                                            borderRadius:
                                                BorderRadius.circular(3),
                                          ),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 2, vertical: 1),
                                          child: Text(
                                            '$screen_2D',
                                            style: TextStyle(color: Colors.red),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      color: Colors.white,
                                      child: Text(
                                        '$description',
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 25,
                                        style: TextStyle(color: Colors.black45),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '1024 reviews',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Write yours >',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Cast & Crew',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'View All',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(10),
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              EdgeInsets.symmetric(vertical: 12),
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TheatreSelectionScreen(),
              ),
            );
          },
          child: Text(
            'Book tickets',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
