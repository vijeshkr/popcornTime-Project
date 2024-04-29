import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:popcorn_time/pages/events_screen.dart';
import 'package:popcorn_time/pages/movie_screen.dart';
import 'package:popcorn_time/pages/profile_screen.dart';
import '../pages/home_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int indexNum = 0;
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    //     const SystemUiOverlayStyle(statusBarColor: AppTheme.statusBar));
    final Size size = MediaQuery.of(context).size;
    List<Widget> bottomNavigationScreens = <Widget> [
      const HomeScreen(),
            MovieScreen(),
      const EventsScreen(),
      const ProfileScreen(),

    ];
    return Scaffold(
      body: bottomNavigationScreens.elementAt(indexNum),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.blue.shade100,
        ),
        child: NavigationBar(
          selectedIndex: indexNum,
          onDestinationSelected: (int index) {
            setState(() {
              indexNum = index;
            },);

          },

          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.cottage_outlined),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.movie_creation_outlined),
              label: 'Movies',
            ),
            NavigationDestination(
              icon: Icon(Icons.event),
              label: 'Events',
            ),
            NavigationDestination(
              icon: Icon(Icons.person_2_outlined),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}



