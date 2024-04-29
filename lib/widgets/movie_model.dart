import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10).r,
        child: Container(
          child: GestureDetector(
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
                    height: 150.h,
                    width: 110.w,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Container(
                  width: 120.w,
                  child: Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    // softWrap: true,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                       SizedBox(
                        width: 15.w,
                      ),
                      Text(
                        "$like %",
                        style: TextStyle(fontSize: 13.sp),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
