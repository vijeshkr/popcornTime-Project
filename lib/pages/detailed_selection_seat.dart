import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:popcorn_time/models/movie_booking_confirmation.dart';
import 'package:popcorn_time/widgets/seat_layout_model.dart';

class DetailedSelectionSeats extends StatefulWidget {
  final SeatLayoutModel model;
  int howManySeats;
  DetailedSelectionSeats({super.key, required this.model, required this.howManySeats});

  @override
  State<DetailedSelectionSeats> createState() => _DetailedSelectionSeatsState();
}

class _DetailedSelectionSeatsState extends State<DetailedSelectionSeats> {
  List seats = [];
  List<double> seatPrices = [];
  double total = 0.0;

  double calculateTotal(List<double> prices) {
    double total = 0.0;
    for (double price in prices) {
      total += price;
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    int alphabets = 0;
    int seatCounter = 0;

    return Scaffold(
      backgroundColor: Color(0xffdce8fc),
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          Center(
            child: Container(
              height: 5.h,
              width: 250.w,
              color: Colors.red.shade200,
            ),
          ),
          SizedBox(
            height: 55.h,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: widget.model.seatTypes.length,
              itemBuilder: (_, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10).r,
                  child: Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(10).r,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "\u20B9 ${widget.model.seatTypes[index]['price']} ${widget.model.seatTypes[index]['title']}"),
                        SizedBox(
                          height: 10.h,
                        ),
                        ...List.generate(
                          widget.model.rowBreaks[index],
                              (row) {
                            alphabets++;
                            seatCounter = 0;
                            String rowNo = String.fromCharCode(64 + alphabets);
                            return Wrap(
                              children: List.generate(
                                widget.model.cols,
                                    (col) {
                                  if (col == 0) {
                                    return Padding(
                                      padding: const EdgeInsets.all(5.0).r,
                                      child: Container(
                                        // color: Colors.red,
                                        child: Center(
                                          child: Text(
                                            String.fromCharCode(64 + alphabets),
                                          ),
                                        ),
                                        height: 20.h,
                                        width: 20.w,
                                      ),
                                    );
                                  }

                                  //for the gap in the center
                                  if ((col == widget.model.gapColIndex ||
                                      col ==
                                          widget.model.gapColIndex + 1) &&
                                      (row !=
                                          widget.model.rowBreaks[index] -
                                              1 &&
                                          widget.model.isLastFilled)) {
                                    return Padding(
                                      padding: const EdgeInsets.all(5.0).r,
                                      child: Container(
                                        // color: Colors.green,
                                        height: 20.h,
                                        width: 20.w,
                                      ),
                                    );
                                  }

                                  seatCounter++;
                                  String seatNo = "$seatCounter";
                                  return Padding(
                                    padding: const EdgeInsets.all(5.0).r,
                                    child: GestureDetector(
                                      onTap: () {
                                        int noOfSeats = widget.howManySeats;
                                        var price = 0.0;
                                        if (rowNo == 'A' ||
                                            rowNo == 'B' ||
                                            rowNo == 'C') {
                                          price = 120.0;
                                        } else if (rowNo == 'I') {
                                          price = 250.0;
                                        } else {
                                          price = 150.0;
                                        }
                                        print(price);

                                        if (seats.contains('$rowNo$seatNo')) {
                                          int index = seats.indexOf('$rowNo$seatNo');
                                          seats.remove('$rowNo$seatNo');
                                          seatPrices.removeAt(index);
                                        } else {
                                          if (seats.length >= noOfSeats) {
                                            seats.removeAt(0);
                                            seatPrices.removeAt(0);
                                          }
                                          seats.add('$rowNo$seatNo');
                                          seatPrices.add(price);
                                        }
                                        setState(() {
                                          total = calculateTotal(seatPrices);
                                        });
                                      },
                                      child: AnimatedContainer(
                                        duration: const Duration(microseconds: 300),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(2.r),
                                            color: seats.contains('$rowNo$seatNo')
                                                ? Colors.green
                                                : Color(0xfffffff),
                                            border: Border.all(
                                                width: 0.5.w, color: Color(0xff707070))),
                                        child: Center(
                                          child: Text('$seatNo'),
                                        ),
                                        height: 20.h,
                                        width: 20.w,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(10).r,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              EdgeInsets.symmetric(vertical: 12).r,
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MovieBookingConfirmation(),
              ),
            );
          },
          child: Text(
            'Pay $total',
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
