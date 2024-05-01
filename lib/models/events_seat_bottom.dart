import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:popcorn_time/models/events_booking_confirmation.dart';

class EventsSeatBottom extends StatefulWidget {
  String imageUrl;
  String confirmTitle;
  String confirmPlace;
  String confirmDate;
  EventsSeatBottom(
      {Key? key,
      required this.imageUrl,
      required this.confirmTitle,
      required this.confirmPlace,
      required this.confirmDate,
      })
      : super(key: key);

  @override
  State<EventsSeatBottom> createState() => _EventsSeatBottomState();
}

class _EventsSeatBottomState extends State<EventsSeatBottom> {
  int selected_index = 1;
  double eventPrice = 1200;

  @override
  Widget build(BuildContext context) {
    double eventTotalPrice = eventPrice * selected_index;
    var eventLimit = 10;
    var listOfContainers = <Padding>[];
    var howManyList = List<int>.generate(eventLimit, (i) => i + 1);

    howManyList.forEach((j) {
      Color myColor = (j == selected_index) ? Colors.red : Colors.white;
      Color textColor = (j == selected_index) ? Colors.white : Colors.black;
      listOfContainers.add(
        Padding(
          padding: const EdgeInsets.all(2).r,
          child: Container(
            width: 30.w,
            height: 30.h,
            decoration: BoxDecoration(
              color: myColor,
              borderRadius: BorderRadius.all(
                Radius.circular(5).r,
              ),
            ),
            child: InkWell(
              onTap: () {
                setState(() {
                  selected_index = j;
                  // print(selected_inx);
                });
              },
              child: Center(
                child: Text(
                  '$j', // Display the seat number
                  style: TextStyle(
                    color: textColor,
                    fontSize: 18.sp,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    });

    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15).r,
              child: Text(
                'How many seats ?',
                style: TextStyle(
                  fontSize: 16.sp,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: listOfContainers,
            ),
            SizedBox(
              height: 30.h,
            ),
            Text(
              'Event Price : \u{20B9} $eventPrice',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.sp,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              '$selected_index Tickets',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.sp,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(10).r,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              EdgeInsets.symmetric(vertical: 12.h),
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => EventsBookingConfirmation(
                    confirmImage: widget.imageUrl,
                    confirmTitle: widget.confirmTitle,
                    confirmPlace: widget.confirmPlace,
                    confirmDate: widget.confirmDate,
                    tickets: selected_index,
                    amount: eventTotalPrice),
              ),
            );
          },
          child: Text(
            'Pay $eventTotalPrice',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
