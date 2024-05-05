import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:popcorn_time/constants/apptheme.dart';
import '../data/review_data.dart';

class ReviewsRatings extends StatefulWidget {
  final String movieName;
  const ReviewsRatings({Key? key, required this.movieName}) : super(key: key);

  @override
  State<ReviewsRatings> createState() => _ReviewsRatingsState();
}

class _ReviewsRatingsState extends State<ReviewsRatings> {

  double findAverage(List list) {
    if (list.isEmpty) {
      return 0.0;
    }

    double sum = 0;
    for (double num in list) {
      sum += num;
    }

    return sum / list.length.toDouble();
  }

  double averageRating = 0;
  int totalVotes = 0;
  double globalRating = 0;

  @override
  Widget build(BuildContext context) {

    List reviewsList = [];
    for (var item in reviewsRatings) {
      if (item['title'] == widget.movieName) {
        reviewsList.addAll(item['review']);
        setState(() {
          averageRating = findAverage(item['rating']);
          averageRating = double.parse(averageRating.toStringAsFixed(1));
          totalVotes = item['rating'].length;
        });
      }
    }

    List reversedReviewList = reviewsList.reversed.toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.movieName),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                color: AppTheme.lightblue,
                borderRadius: BorderRadius.circular(15),
              ),
              height: 150.h,
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${averageRating}/10',
                    style: GoogleFonts.nunito(
                      textStyle: TextStyle(
                        fontSize: 50.h,
                        fontWeight: FontWeight.bold,
                        color: AppTheme.splash,
                      ),
                    ),),
                  Text('$totalVotes votes',
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: reversedReviewList.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  trailing: Icon(Icons.verified,
                  size: 18,
                  color: Colors.blue,),
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey.shade400,
                    child: Icon(Icons.person,
                    size: 30,
                    color: AppTheme.colorLightBlue,),
                  ),
                  title: const Text('User',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),), // Replace 'User' with actual user name
                  subtitle: Text(reversedReviewList[index],style: const TextStyle(
                    fontSize: 15,
                  ),),
                  onTap: () {
                    // Your onTap logic here
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
