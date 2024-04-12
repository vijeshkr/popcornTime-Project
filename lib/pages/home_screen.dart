import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:popcorn_time/pages/events_screen.dart';
import 'package:popcorn_time/pages/movie_screen.dart';
import 'package:popcorn_time/pages/notifications.dart';
import '../constants/app_icons.dart';
import '../constants/apptheme.dart';
import '../constants/search_movies.dart';
import '../widgets/home_banner.dart';
import '../widgets/home_banner_head.dart';
import '../widgets/home_screen_body.dart';
import '../widgets/home_show_model.dart';
import '../widgets/movie_model.dart';
import '../widgets/svg_with_title.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int indexNum = 0;



  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    List<Widget> bottomNavigationScreens = <Widget> [
      HomeScreenBody(size: size),
      MovieScreen(),
      EventsScreen(),

    ];
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
        body: bottomNavigationScreens.elementAt(indexNum),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: indexNum,
          onTap: (int index) {
            setState(() {
              indexNum = index;
            },);

          },
          iconSize: 30,
          showUnselectedLabels: true,
          selectedItemColor: Colors.redAccent,
          items: const [
            BottomNavigationBarItem(
              backgroundColor: AppTheme.statusBar,
              icon: Icon(Icons.cottage_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              backgroundColor: AppTheme.statusBar,
              icon: Icon(Icons.movie_creation_outlined),
              label: 'Movies',
            ),
            BottomNavigationBarItem(
              backgroundColor: AppTheme.statusBar,
              icon: Icon(Icons.event),
              label: 'Events',
            ),
            BottomNavigationBarItem(
              backgroundColor: AppTheme.statusBar,
              icon: Icon(Icons.person_2_outlined),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}

