import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:popcorn_time/constants/apptheme.dart';
import 'package:popcorn_time/models/movie_booking_confirmation.dart';
import 'package:popcorn_time/widgets/seat_layout_model.dart';

class DetailedSelectionSeats extends StatefulWidget {
  final SeatLayoutModel model;
  int howManySeats;
  String movieImage;
  String theatreName;
  String showTime;
  String movieTitle;
  dynamic selectedDate;
  DetailedSelectionSeats({
    super.key,
    required this.model,
    required this.howManySeats,
    required this.movieImage,
    required this.selectedDate,
    required this.theatreName,
    required this.showTime,
    required this.movieTitle,
  });

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
      backgroundColor: const Color(0xffdce8fc),
      appBar: AppBar(
        title: Text(
          widget.movieTitle
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            width: double.maxFinite,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.theatreName,style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16
                  ),),
                  Text(widget.showTime,style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16
                  ),),
                  Text('${seats.length} Seats selected',style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16
                  ),),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Center(
            child: Container(
              height: 5.h,
              width: 250.h,
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
                  padding: const EdgeInsets.only(bottom: 10).h,
                  child: Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(10).h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "\u20B9 ${widget.model.seatTypes[index]['price']} ${widget.model.seatTypes[index]['title']}",style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),),
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
                                      child: SizedBox(
                                        height: 20.h,
                                        width: 20.w,
                                        child: Center(
                                          child: Text(
                                            String.fromCharCode(64 + alphabets),
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),
                                        ),
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
                                      padding: const EdgeInsets.all(6.0).r,
                                      child: SizedBox(
                                        height: 20.h,
                                        width: 20.w,
                                      ),
                                    );
                                  }

                                  seatCounter++;
                                  String seatNo = "$seatCounter";
                                  return Padding(
                                    padding: const EdgeInsets.all(6.0).r,
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

                                        if (seats.contains('$rowNo$seatNo')) {
                                          int index =
                                              seats.indexOf('$rowNo$seatNo');
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
                                        duration:
                                            const Duration(microseconds: 300),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(2.r),
                                            color:
                                                seats.contains('$rowNo$seatNo')
                                                    ? const Color(0xff128C7E)
                                                    : const Color(0xfffffff),
                                            border: Border.all(
                                                width: 0.5,
                                                color: const Color(0xff707070),),),
                                        height: 20.h,
                                        width: 20.h,
                                        child: Center(
                                          child: Text(seatNo,style: TextStyle(
                                            color:
                                            seats.contains('$rowNo$seatNo')
                                                ? Colors.white
                                                :  Colors.black,
                                          ),
                                          ),
                                        ),
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
        padding: const EdgeInsets.all(10).h,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(AppTheme.splash),
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              const EdgeInsets.symmetric(vertical: 12).h,
            ),
          ),
          onPressed: () {

            if (seats.length < widget.howManySeats) {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Please select your seats.',style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),),
                    content: Text('Please select ${widget.howManySeats - seats.length} more seat.',style: const TextStyle(
                      fontSize: 16,
                    ),),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context); // Close the dialog
                        },
                        child: const Text('Ok',style: TextStyle(
                          color: AppTheme.splash,
                        ),),
                      ),
                    ],
                  );
                },
              );
            }else{
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MovieBookingConfirmation(
                    myList: seats,
                    tickets: widget.howManySeats,
                    amountPaid: total,
                    movieImage: widget.movieImage,
                    selectedDate: widget.selectedDate,
                    theatreName: widget.theatreName,
                    showTime: widget.showTime,
                    movieTitle: widget.movieTitle,
                  ),
                ),
              );
            }

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
