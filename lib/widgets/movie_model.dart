import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:popcorn_time/constants/apptheme.dart';
import 'package:popcorn_time/pages/details_screen.dart';

import '../data/review_data.dart';

class MovieModel extends StatefulWidget {
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
  State<MovieModel> createState() => _MovieModelState();
}

class _MovieModelState extends State<MovieModel> {
  @override
  Widget build(BuildContext context) {


    double findAverage(List list) {
      if (list.isEmpty) {
        return 0.0; // Handle empty list to avoid division by zero
      }

      double sum = 0;
      for (double num in list) {
        sum += num;
      }

      return sum / list.length.toDouble();
    }


    double averageRating = 0;

    reviewsRatings.forEach((item) {
      if (item['title'] == widget.title) {
        setState(() {
          averageRating = findAverage(item['rating']);
          averageRating = double.parse(averageRating.toStringAsFixed(1));

        });
      }
    });

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailsScreen(
                    movieTitle: widget.title,
                    movieCover: widget.coverImage,
                    like: widget.like,
                    language: widget.language,
                    screen_2D: widget.screen_2D,
                    genre: widget.genre,
                    release: widget.release,
                    description: widget.description,
                    duration: widget.duration,
                movieImage: widget.bannerUrl,
                castCrew: widget.castCrew,
                  )),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10).r,
            child: Image.asset(
              widget.bannerUrl,
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
                    "$averageRating/10",
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
                widget.title,
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
