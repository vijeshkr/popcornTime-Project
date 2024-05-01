import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:popcorn_time/pages/detailed_selection_seat.dart';
import 'package:popcorn_time/widgets/seat_layout_model.dart';

class SelectSeatBottom extends StatefulWidget {
  String showTime;
  String theatreName;
  final String movieName;
  final String movieImage;
  final dynamic selectedDate;
  SelectSeatBottom({
    Key? key,
    required this.showTime,
    required this.theatreName,
    required this.movieName,
    required this.movieImage,
    required this.selectedDate,
  }) : super(key: key);

  @override
  State<SelectSeatBottom> createState() => _SelectSeatBottomState();
}

class _SelectSeatBottomState extends State<SelectSeatBottom> {
  int selected_inx = 1;
  @override
  Widget build(BuildContext context) {
    var n = 10;
    var listOfContainers = <Padding>[];
    var list = List<int>.generate(n, (i) => i + 1);

    list.forEach((j) {
      Color myColor = (j == selected_inx) ? Colors.red : Colors.white;
      Color textColor = (j == selected_inx) ? Colors.white : Colors.black;
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
                  selected_inx = j;
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
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: listOfContainers,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15).r,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Column(
                      children: [
                        SizedBox(height: 20.h),
                        const Text(
                          'SILVER',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        const Text(
                          'Rs. 120',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                        )
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        SizedBox(height: 20.h),
                        const Text(
                          'GOLD',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        const Text(
                          'Rs. 150',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        SizedBox(height: 20.h),
                        const Text(
                          'PLATINUM',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        const Text(
                          'Rs. 220',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
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
                builder: (context) => DetailedSelectionSeats(
                  movieTitle: widget.movieName,
                  showTime: widget.showTime,
                  theatreName: widget.theatreName,
                  selectedDate: widget.selectedDate,
                  movieImage: widget.movieImage,
                  model: SeatLayoutModel(
                    rows: 9,
                    cols: 12,
                    seatTypes: [
                      {"title": "Silver", "price": 120.0},
                      {"title": "Gold", "price": 150.0},
                      {"title": "Platinum", "price": 250.0},
                    ],
                    theatreId: 123,
                    gap: 2,
                    gapColIndex: 5,
                    isLastFilled: true,
                    rowBreaks: [3, 5, 1],
                  ),
                  howManySeats: selected_inx,
                ),
              ),
            );
          },
          child: Text(
            'Select Seats',
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
