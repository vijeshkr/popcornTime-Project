import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:popcorn_time/pages/events_screen.dart';
import 'package:popcorn_time/pages/sports_screen.dart';
import '../constants/apptheme.dart';

class HomeBannerHead extends StatelessWidget {
  final String asset;
  final String title;
  final String viewAll;

  const HomeBannerHead({
    super.key,
    required this.asset,
    required this.title,
    required this.viewAll,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20).h,
      child: Row(
        children: [
          SvgPicture.asset(
            asset,
            color: Colors.black.withOpacity(0.8),
            height: 18.h,
            width: 18.h,
          ),
           SizedBox(
            width: 10.h,
          ),
          Text(
            title.toUpperCase(),
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black.withOpacity(0.8)),
          ),
          const Spacer(),
          TextButton(
            onPressed: () {
              if(viewAll == 'Events'){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const EventsScreen()),
                );
              }else if(viewAll == 'Sports'){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SportsScreen()),
                );
              }
            },
            child: const Text(
              "View All",
              style: TextStyle(color: AppTheme.splash),
            ),
          ),
        ],
      ),
    );
  }
}