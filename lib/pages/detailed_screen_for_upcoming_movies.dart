import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:popcorn_time/constants/apptheme.dart';
import 'package:popcorn_time/pages/theatre_selection_screen.dart';

class DetailsScreenUpcomingMovies extends StatelessWidget {
  String movieTitle;
  String movieCover;
  String language;
  String screen_2D;
  int like;
  List genre;
  String release;
  String description;
  String duration;
  Map castCrew;
  DetailsScreenUpcomingMovies(
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
        required this.castCrew,
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              movieTitle,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18.sp,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'UA | $release',
                              style: TextStyle(color: Colors.black45),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(20).r,
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
                                      height: 5.h,
                                    ),
                                    Text(
                                      '$duration . ${genre[0]}, ${genre[1]}',
                                      style: TextStyle(color: Colors.black45),
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '$language',
                                          style: TextStyle(color: Colors.red),
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.red.withOpacity(0.2),
                                            borderRadius:
                                            BorderRadius.circular(3).r,
                                          ),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 2, vertical: 1).r,
                                          child: Text(
                                            '$screen_2D',
                                            style: TextStyle(color: Colors.red),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10.h,
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
                    height: 10.h,
                  ),
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(20).r,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Release Date',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '$release',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(20).r,
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
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        ListTile(
                          title: Text('${castCrew['director']}'),
                          subtitle: Text('Director'),
                          trailing: Icon(Icons.videocam_outlined),
                        ),
                        Divider(thickness: 1,color: Colors.grey,),
                        ListTile(
                          title: Text('${castCrew['actor']}'),
                          subtitle: Text('Actor'),
                          trailing: Icon(Icons.theater_comedy_outlined),
                        ),
                        Divider(thickness: 1,color: Colors.grey,),

                        ListTile(
                          title: Text('${castCrew['actress']}'),
                          subtitle: Text('Actress'),
                          trailing: Icon(Icons.theater_comedy_outlined),
                        ),
                        Divider(thickness: 1,color: Colors.grey,),

                        ListTile(
                          title: Text('${castCrew['producer']}'),
                          subtitle: Text('Producer'),
                          trailing: Icon(Icons.paid_outlined),
                        ),
                        Divider(thickness: 1,color: Colors.grey,),

                        ListTile(
                          title: Text('${castCrew['musician']}'),
                          subtitle: Text('Musician'),
                          trailing: Icon(Icons.music_note_outlined),
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
    );
  }
}
