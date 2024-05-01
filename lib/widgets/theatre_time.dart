import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:popcorn_time/widgets/select_seat_bottom.dart';

class TheatreTime extends StatelessWidget {
  final String theatreName;
  final String movieName;
  final String movieImage;
  final dynamic selectedDate;
  const TheatreTime({
    super.key,
    required this.theatreName,
    required this.movieName,
    required this.movieImage,
    required this.selectedDate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10).r,
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                theatreName,
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
              ),
              const Icon(
                Icons.info_outline,
                color: Colors.black38,
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      String showTime = '11:30 AM';
                      showModalBottomSheet(
                          context: context,
                          builder: (_) => SelectSeatBottom(
                                showTime: showTime,
                                theatreName: theatreName,
                                movieImage: movieImage,
                                movieName: movieName,
                                selectedDate: selectedDate,
                              ),
                          constraints: BoxConstraints(
                              maxHeight:
                                  MediaQuery.of(context).size.height * 0.35));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        border: Border.all(
                          width: 1.w,
                          // color: Color(0xffe5e5e5),
                          color: Colors.green.shade600,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10).r,
                        child: Text(
                          '11:30 AM',
                          style: TextStyle(color: Colors.green[600]),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  InkWell(
                    onTap: () {
                      String showTime = '03:00 PM';
                      showModalBottomSheet(
                          context: context,
                          builder: (_) => SelectSeatBottom(
                                showTime: showTime,
                                theatreName: theatreName,
                                movieImage: movieImage,
                                movieName: movieName,
                                selectedDate: selectedDate,
                              ),
                          constraints: BoxConstraints(
                              maxHeight:
                                  MediaQuery.of(context).size.height * 0.35));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        border: Border.all(
                          width: 1.w,
                          // color: Color(0xffe5e5e5),

                          color: Colors.green.shade600,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10).r,
                        child: Text(
                          '03:00 PM',
                          style: TextStyle(color: Colors.green[600]),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15.h,
                  ),
                  InkWell(
                    onTap: () {
                      String showTime = '06:00 PM';
                      showModalBottomSheet(
                          context: context,
                          builder: (_) => SelectSeatBottom(
                                showTime: showTime,
                                theatreName: theatreName,
                                movieImage: movieImage,
                                movieName: movieName,
                                selectedDate: selectedDate,
                              ),
                          constraints: BoxConstraints(
                              maxHeight:
                                  MediaQuery.of(context).size.height * 0.35));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        border: Border.all(
                            width: 1.w,
                            // color: Color(0xffe5e5e5),
                            color: Colors.green.shade600),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10).r,
                        child: Text(
                          '06:00 PM',
                          style: TextStyle(color: Colors.green[600]),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      String showTime = '09:30 PM';
                      showModalBottomSheet(
                          context: context,
                          builder: (_) => SelectSeatBottom(
                                showTime: showTime,
                                theatreName: theatreName,
                                movieImage: movieImage,
                                movieName: movieName,
                                selectedDate: selectedDate,
                              ),
                          constraints: BoxConstraints(
                              maxHeight:
                                  MediaQuery.of(context).size.height * 0.35));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        border: Border.all(
                            width: 1,
                            // color: Color(0xffe5e5e5),
                            color: Colors.green.shade600),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10).r,
                        child: Text(
                          '09:30 PM',
                          style: TextStyle(color: Colors.green[600]),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
