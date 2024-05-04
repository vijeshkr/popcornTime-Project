import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:popcorn_time/constants/apptheme.dart';
import 'package:popcorn_time/pages/theatre_selection_screen.dart';
import '../data/location_data.dart';
import 'home_screen.dart';

class DetailsScreen extends StatelessWidget {
  String movieTitle;
  String movieImage;
  String movieCover;
  String language;
  String screen_2D;
  int like;
  List genre;
  String release;
  String description;
  String duration;
  Map castCrew;
  DetailsScreen({
    super.key,
    required this.movieTitle,
    required this.movieImage,
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
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              leading: IconButton(
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
                          movieCover,
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
                color: const Color(0xfff5f5fa),
                padding: const EdgeInsets.all(20).r,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10).r),
                      width: double.maxFinite,
                      padding: const EdgeInsets.all(20).h,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                movieTitle,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 5.h,
                                  ),
                                  Text(
                                    '${like / 10}/10',
                                    style: const TextStyle(fontSize: 15),
                                  ),
                                ],
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
                                style: const TextStyle(color: Colors.black45),
                              ),
                              const Text(
                                '2.4K votes',
                                style: TextStyle(color: Colors.red),
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
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10).r),
                      padding: const EdgeInsets.all(20).h,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Text(
                                      '$duration . ${genre[0]}, ${genre[1]}',
                                      style: const TextStyle(
                                          color: Colors.black45),
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          language,
                                          style: const TextStyle(
                                              color: AppTheme.splash),
                                        ),
                                        SizedBox(
                                          width: 10.h,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: AppTheme.splash
                                                .withOpacity(0.2),
                                            borderRadius:
                                                BorderRadius.circular(3).r,
                                          ),
                                          padding: const EdgeInsets.symmetric(
                                                  horizontal: 2, vertical: 1).h
                                              .h,
                                          child: Text(
                                            screen_2D,
                                            style: const TextStyle(
                                                color: AppTheme.splash),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10).r),
                                      child: Text(
                                        description,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 25,
                                        style: const TextStyle(
                                            color: Colors.black45),
                                      ),
                                    ),
                                  ],
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
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10).r),
                      padding: const EdgeInsets.all(20).h,
                      child: const Row(
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
                      height: 10.h,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),),
                      padding: const EdgeInsets.all(20).h,
                      child: const Row(
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
                            subtitle: const Text('Director'),
                            trailing: const Icon(Icons.videocam_outlined,color: AppTheme.splash,),
                          ),
                          const Divider(
                            thickness: 1,
                            color: Colors.grey,
                          ),
                          ListTile(
                            title: Text('${castCrew['actor']}'),
                            subtitle: const Text('Actor'),
                            trailing: const Icon(Icons.theater_comedy_outlined, color: AppTheme.splash,),
                          ),
                          const Divider(
                            thickness: 1,
                            color: Colors.grey,
                          ),
                          ListTile(
                            title: Text('${castCrew['actress']}'),
                            subtitle: const Text('Actress'),
                            trailing: const Icon(Icons.theater_comedy_outlined, color: AppTheme.splash,),
                          ),
                          const Divider(
                            thickness: 1,
                            color: Colors.grey,
                          ),
                          ListTile(
                            title: Text('${castCrew['producer']}'),
                            subtitle: const Text('Producer'),
                            trailing: const Icon(Icons.paid_outlined, color: AppTheme.splash,),
                          ),
                          const Divider(
                            thickness: 1,
                            color: Colors.grey,
                          ),
                          ListTile(
                            title: Text('${castCrew['musician']}'),
                            subtitle: const Text('Musician'),
                            trailing: const Icon(Icons.music_note_outlined, color: AppTheme.splash,),
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
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10).h,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(AppTheme.splash),
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              const EdgeInsets.symmetric(vertical: 12).h,
            ),
          ),
          onPressed: () {
            for (var locationData in theatreList) {
              var location = locationData['location'];
              if (myLocation.contains(location)) {
                theatreNames = locationData[myLocation];
                break;
              }
            }
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TheatreSelectionScreen(
                  movieName: movieTitle,
                  movieImage: movieImage,
                ),
              ),
            );
          },
          child: const Text(
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
