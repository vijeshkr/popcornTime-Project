import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:popcorn_time/constants/apptheme.dart';

import '../constants/assets.dart';
import '../widgets/bottom_navigation.dart';

class MovieBookingConfirmation extends StatelessWidget {
  List myList = [];
  int tickets;
  double amountPaid;
  String movieImage;
  String movieTitle;
  String showTime;
  String theatreName;
  dynamic selectedDate;
  MovieBookingConfirmation({
    super.key,
    required this.myList,
    required this.tickets,
    required this.amountPaid,
    required this.movieImage,
    required this.movieTitle,
    required this.showTime,
    required this.theatreName,
    required this.selectedDate,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10).h,
          child: Container(
            height: size.height * 0.70,
            width: double.maxFinite,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10).r,
                border: Border.all(width: 1, color: Colors.grey)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10).h,
                  child: SizedBox(
                    height: 100.h,
                    child: Image.asset(
                      Assets.logo,
                      width: 250.h,
                    ),
                  ),
                ),
                Text(
                  'Your booking is confirmed!',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.green.shade600),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Booking ID  ',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    Text(
                      'PTMOV00000001',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10).h,
                  child: Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10).r,
                        border:
                            Border.all(width: 1, color: Colors.grey.shade200)),

                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10).h,
                              child: Image.asset(
                                movieImage,
                                width: 80.h,
                                height: 100.h,
                              ),
                            ),
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.all(10).h,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      movieTitle,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Text('$showTime | $selectedDate'),
                                    Text(
                                      theatreName,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 3,
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 1,
                          color: Colors.grey.shade400,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: [
                              const Text('Seat No :  '),
                              Row(
                                children: myList
                                    .map((item) => Text(
                                  '$item ',
                                  style: const TextStyle(
                                    fontWeight:
                                    FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ))
                                    .toList(),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Text(
                                    '$tickets',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 45,
                                    ),
                                  ),
                                  const Text('Tickets'),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10).h,
                              child: Column(
                                children: [
                                  const Text('Amount Paid : '),
                                  Text(
                                    '$amountPaid',
                                    style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BottomNavigation(),
                      ),
                    );
                  },
                  child: const Text('Back to Home',style: TextStyle(
                    color: AppTheme.splash,
                  ),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
