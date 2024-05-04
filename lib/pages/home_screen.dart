import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:popcorn_time/data/events_data.dart';
import 'package:popcorn_time/models/events_shows_model.dart';
import 'package:popcorn_time/pages/notifications.dart';
import 'package:popcorn_time/pages/select_location_screen.dart';
import '../constants/app_icons.dart';
import '../constants/apptheme.dart';
import '../constants/search_movies.dart';
import '../data/movie_data.dart';
import '../widgets/home_banner.dart';
import '../widgets/home_banner_head.dart';
import '../widgets/movie_model.dart';
import '../widgets/svg_with_title.dart';

String myLocation = 'Ernakulam';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        toolbarHeight: 70.h,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'It All Starts Here',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SelectLocationScreen(),),
                );
              },
              child: Row(
                children: [
                  Text(
                    myLocation,
                    style: const TextStyle(
                      fontSize: 16,
                      color: AppTheme.splash,
                    ),
                  ),
                  const Icon(
                    Icons.arrow_drop_down,
                    color: AppTheme.splash,
                  )
                ],
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(
                context: context,
                delegate: CustomSearch(),
              );
            },
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Notifications(),
                ),
              );
            },
            icon: const Icon(
              Icons.notifications,
              color: Colors.black,
            ),
          ),
           SizedBox(
            width: 10.h,
          )
        ],
      ),
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgWithTitle(
                      imagePath: menus[0].asset,
                      title: menus[0].name,
                      onPressed: 'All'),
                  SvgWithTitle(
                      imagePath: menus[1].asset,
                      title: menus[1].name,
                      onPressed: 'Movies'),
                  SvgWithTitle(
                      imagePath: menus[2].asset,
                      title: menus[2].name,
                      onPressed: 'Events'),
                  SvgWithTitle(
                      imagePath: menus[3].asset,
                      title: menus[3].name,
                      onPressed: 'Sports'),
                  SvgWithTitle(
                      imagePath: menus[4].asset,
                      title: menus[4].name,
                      onPressed: 'Shows'),
                ],
              ),
              Divider(
                thickness: 5,
                color: AppTheme.lightblue,
              ),
              Padding(
                padding: const EdgeInsets.all(10).h,
                child: SizedBox(
                  height: size.height * 0.35,
                  width: size.width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return MovieModel(
                        title: movieDataNow[index]['title'],
                        like: movieDataNow[index]['likes'],
                        bannerUrl: movieDataNow[index]['image'],
                        coverImage: movieDataNow[index]['coverImage'],
                        language: movieDataNow[index]['language'],
                        screen_2D: movieDataNow[index]['2D'],
                        genre: movieDataNow[index]['genre'],
                        release: movieDataNow[index]['release'],
                        description: movieDataNow[index]['description'],
                        duration: movieDataNow[index]['duration'],
                        castCrew: movieDataNow[index]['castCrew'],
                      );
                    },
                  ),
                ),
              ),
              Divider(
                thickness: 5,
                color: AppTheme.lightblue,
              ),
              HomeBannerHead(
                asset: eventsIcon,
                title: 'Events',
                viewAll: 'Events',
              ),
              HomeBanner(
                image: eventsDummyData[4]['coverImage'],
                bannerTitle: eventsDummyData[4]['title'],
                index: 4,
              ),
               Divider(
                thickness: 5,
                color: AppTheme.lightblue,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  EventsShowsModel(
                      title: eventsDummyData[10]['title'],
                      bannerUrl: eventsDummyData[10]['image'],
                      coverImage: eventsDummyData[10]['coverImage'],
                      item: eventsDummyData[10]['item'],
                      dateTime: eventsDummyData[10]['dateTime'],
                      artist: eventsDummyData[10]['artist'],
                      location: eventsDummyData[10]['location'],
                      category: eventsDummyData[10]['category'],
                      event: eventsDummyData[10]['event'],
                  ),
                  EventsShowsModel(
                      title: eventsDummyData[8]['title'],
                      bannerUrl: eventsDummyData[8]['image'],
                      coverImage: eventsDummyData[8]['coverImage'],
                      item: eventsDummyData[8]['item'],
                      dateTime: eventsDummyData[8]['dateTime'],
                      artist: eventsDummyData[8]['artist'],
                      location: eventsDummyData[8]['location'],
                      category: eventsDummyData[8]['category'],
                      event: eventsDummyData[8]['event'],
                  ),
                ],
              ),
              Divider(
                thickness: 5,
                color: AppTheme.lightblue,
              ),
              HomeBannerHead(
                asset: sportsIcon,
                title: 'Sports',
                viewAll: 'Sports',
              ),
              HomeBanner(
                image: eventsDummyData[5]['coverImage'],
                bannerTitle: eventsDummyData[5]['title'],
                index: 5,
              ),
               Divider(
                thickness: 5,
                color: AppTheme.lightblue,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  EventsShowsModel(
                      title: eventsDummyData[1]['title'],
                      bannerUrl: eventsDummyData[1]['image'],
                      coverImage: eventsDummyData[1]['coverImage'],
                      item: eventsDummyData[1]['item'],
                      dateTime: eventsDummyData[1]['dateTime'],
                      artist: eventsDummyData[1]['artist'],
                      location: eventsDummyData[1]['location'],
                      category: eventsDummyData[1]['category'],
                      event: eventsDummyData[1]['event'],
                  ),
                  EventsShowsModel(
                      title: eventsDummyData[3]['title'],
                      bannerUrl: eventsDummyData[3]['image'],
                      coverImage: eventsDummyData[3]['coverImage'],
                      item: eventsDummyData[3]['item'],
                      dateTime: eventsDummyData[3]['dateTime'],
                      artist: eventsDummyData[3]['artist'],
                      location: eventsDummyData[3]['location'],
                      category: eventsDummyData[3]['category'],
                      event: eventsDummyData[3]['event'],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
