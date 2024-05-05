import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:popcorn_time/constants/apptheme.dart';
import '../data/review_data.dart';



class RatingBottom extends StatefulWidget {
  final String movieName;
  RatingBottom({
    Key? key,
    required this.movieName,
  }) : super(key: key);

  @override
  State<RatingBottom> createState() => _RatingBottomState();
}

class _RatingBottomState extends State<RatingBottom> {
  TextEditingController reviewController = TextEditingController();
  double averageRating = 0;
  int totalVotes = 0;
  double globalRating = 0;

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

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text(widget.movieName)),
      ),
      body: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15).h,
              child: const Text(
                'How would you rate the movie ?',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            RatingBar.builder(
              initialRating: 0,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: false,
              itemCount: 10,
              itemSize: 28,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => const Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              onRatingUpdate: (rating) {
                setState(() {
                  globalRating = rating;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                controller: reviewController,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: '  Express more, write a review (Optional)',
                ),
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10).h,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(AppTheme.splash),
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              EdgeInsets.symmetric(vertical: 12.h),
            ),
          ),
          onPressed: () {
            if(globalRating > 0 && globalRating < 11){
              String review = reviewController.text;
              reviewsRatings.forEach((item) {
                if (item['title'] == widget.movieName) {
                  item['rating'].add(globalRating);
                  setState(() {
                    averageRating = findAverage(item['rating']);
                    averageRating = double.parse(averageRating.toStringAsFixed(1));
                    totalVotes = item['rating'].length;
                  });
                  item['rated'].add(item['title']);// You can access other properties like 'rating', 'review', 'rated' here
                  if(review != ''){
                    item['review'].add(review);
                  }
                }
              });
              // Navigator.pop(context);
              Navigator.pop(context, [totalVotes, averageRating]);
            }
          },
          child: const Text(
            'Submit',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}