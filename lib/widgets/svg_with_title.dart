import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:popcorn_time/pages/events_screen.dart';
import 'package:popcorn_time/pages/movie_screen.dart';
import 'package:popcorn_time/pages/sports_screen.dart';
import '../constants/apptheme.dart';
import '../pages/shows_screen.dart';

class SvgWithTitle extends StatelessWidget {
  final String imagePath;
  final String title;
  final String onPressed;

  SvgWithTitle({
    required this.imagePath,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if(onPressed == 'Movies'){
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => MovieScreen(),
            ),
          );
        }else if(onPressed == 'Events'){
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const EventsScreen(),
            ),
          );
        }else if(onPressed == 'Sports'){
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const SportsScreen(),
            ),
          );
        }else if(onPressed == 'Shows'){
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const ShowsScreen(),
            ),
          );
        }
        print(onPressed);
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 10, left: 15.0, right: 10).r,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0).r,
              child: SvgPicture.asset(
                imagePath,
                width: 35.h,
                height: 35.h,
                // color: AppTheme.splash,
              ),
            ),
            SizedBox(height: 5.h), // Add spacing between image and title
            Text(
              title,
              style: TextStyle(
                  color: Colors.black
                      .withOpacity(0.6) // Adjust font weight as needed
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
