import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:popcorn_time/pages/events_screen.dart';
import 'package:popcorn_time/pages/movie_screen.dart';
import 'package:popcorn_time/pages/notifications.dart';
import 'package:popcorn_time/pages/profile_screen.dart';
import '../constants/app_icons.dart';
import '../constants/apptheme.dart';
import '../constants/search_movies.dart';
import '../pages/home_screen.dart';
import '../widgets/home_banner.dart';
import '../widgets/home_banner_head.dart';
import '../widgets/home_show_model.dart';
import '../widgets/movie_model.dart';
import '../widgets/svg_with_title.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  int indexNum = 0;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    List<Widget> bottomNavigationScreens = <Widget> [
      HomeScreen(),
      MovieScreen(),
      EventsScreen(),
      ProfileScreen(),

    ];
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: AppTheme.statusBar));
    return SafeArea(
      child: Scaffold(
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



