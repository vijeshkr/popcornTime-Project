import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:popcorn_time/constants/apptheme.dart';
import 'package:popcorn_time/pages/details_screen.dart';

class MovieModel extends StatelessWidget {
  final String title;
  final int like;
  final String bannerUrl;
  final String coverImage;
  final String language;
  final String screen_2D;
  final List genre;
  final String release;
  final String description;
  final String duration;
  final Map castCrew;
  const MovieModel({
    super.key,
    required this.title,
    required this.like,
    required this.bannerUrl,
    required this.coverImage,
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
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailsScreen(
                    movieTitle: title,
                    movieCover: coverImage,
                    like: like,
                    language: language,
                    screen_2D: screen_2D,
                    genre: genre,
                    release: release,
                    description: description,
                    duration: duration,
                movieImage: bannerUrl,
                castCrew: castCrew,
                  )),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10).r,
            child: Image.asset(
              bannerUrl,
              height: 200.h,
              width: 150.h,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Container(
            width: 150.h,
            decoration: BoxDecoration(
              color: AppTheme.lightblue,
              borderRadius: BorderRadius.circular(10).r,
            ),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 5.h,
                  ),
                  const Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 15,
                  ),
                  SizedBox(
                    width: 5.h,
                  ),
                  Text(
                    "${like/10}/10",
                    style: const TextStyle(fontSize: 13),
                  )
                ],
              )
          ),
          Padding(
            padding: const EdgeInsets.all(8).h,
            child: SizedBox(
              width: 150.h,
              child: Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                // softWrap: true,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
