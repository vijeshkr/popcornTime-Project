import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:popcorn_time/constants/apptheme.dart';
import 'package:popcorn_time/widgets/bottom_navigation.dart';
import '../constants/assets.dart';

class EventsBookingConfirmation extends StatelessWidget {
  String confirmImage;
  String confirmTitle;
  String confirmPlace;
  String confirmDate;
  int tickets;
  double amount;
  EventsBookingConfirmation({
    super.key,
    required this.confirmImage,
    required this.confirmTitle,
    required this.confirmPlace,
    required this.confirmDate,
    required this.tickets,
    required this.amount,
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
            height: size.height * 0.65,
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
                    height: 100,
                    child: Image.asset(
                      Assets.logo,
                      width: 250.w,
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
                    // height: 250,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10).r,
                      border: Border.all(width: 1, color: Colors.grey.shade200),
                    ),

                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Image.asset(
                                confirmImage,
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
                                      confirmTitle,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Text(confirmDate),
                                    Text(
                                      confirmPlace,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 3,
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10).h,
                              child: Column(
                                children: [
                                  Text(
                                    '$tickets',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 45,
                                    ),
                                  ),
                                  const Text(' Tickets'),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10).h,
                              child: Column(
                                children: [
                                  const Text('Amount Paid : '),
                                  Text(
                                    '$amount',
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
                  child: const Text(
                    'Back to Home',
                    style: TextStyle(
                      color: AppTheme.splash,
                    ),
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
