import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:popcorn_time/pages/notifications.dart';
import '../constants/app_icons.dart';
import '../constants/apptheme.dart';
import '../constants/search_movies.dart';
import '../widgets/home_banner.dart';
import '../widgets/home_banner_head.dart';
import '../widgets/home_show_model.dart';
import '../widgets/movie_model.dart';
import '../widgets/svg_with_title.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: AppTheme.statusBar));
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // backgroundColor: AppTheme.appBarColor,
          backgroundColor: AppTheme.greyColor,
          toolbarHeight: 70,
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'It All Starts Here',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Text(
                    'Ernakulam',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppTheme.splash,
                    ),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: AppTheme.splash,
                  )
                ],
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {
                showSearch(context: context,
                    delegate:CustomSearch(), );
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
                    builder: (context) => Notifications(),
                  ),
                );
              },
              icon: const Icon(
                Icons.notifications,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.qr_code_scanner,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              width: 10,
            )
          ],
        ),
        body: Container(
          height: size.height,
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
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
                  color: AppTheme.greyColor,
                ),
                Container(
                  height: 225,
                  width: size.width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return MovieModel(
                        title: movies[index].title,
                        like: movies[index].like,
                        bannerUrl: movies[index].bannerUrl,
                      );
                    },
                  ),
                ),
                Divider(
                  thickness: 5,
                  color: AppTheme.greyColor,
                ),
                HomeBannerHead(
                  asset: eventsIcon,
                  title: 'Events',
                ),
                HomeBanner(
                  image: edSheeran,
                  bannerTitle: edSheeranTitle,
                ),
                const Divider(
                  thickness: 5,
                  color: AppTheme.greyColor,
                ),
                Row(
                  children: [
                    HomeShows(
                      show: show1,
                      showTitle: showTitle1,
                    ),
                    HomeShows(
                      show: show2,
                      showTitle: showTitle2,
                    ),
                  ],
                ),
                Divider(
                  thickness: 5,
                  color: AppTheme.greyColor,
                ),
                HomeBannerHead(
                  asset: sportsIcon,
                  title: 'Sports',
                ),
                HomeBanner(
                  image: kbfc,
                  bannerTitle: kbfcTitle,
                ),
                const Divider(
                  thickness: 5,
                  color: AppTheme.greyColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

