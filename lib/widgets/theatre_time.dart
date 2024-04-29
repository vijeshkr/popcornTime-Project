import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:popcorn_time/widgets/select_seat_bottom.dart';

class TheatreTime extends StatelessWidget {
  final String theatreName;
  const TheatreTime({
    super.key,
    required this.theatreName,
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
                    onTap: (){
                      showModalBottomSheet(
                          context: context,
                          builder: (_) => SelectSeatBottom(),
                          constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height * 0.35)
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        border: Border.all(
                          width: 1.w,
                          // color: Color(0xffe5e5e5),
                          color: Colors.yellow,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10).r,
                        child: Text(
                          '11:30 AM',
                          style: TextStyle(color: Colors.yellow[600]),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      border: Border.all(
                        width: 1.w,
                        // color: Color(0xffe5e5e5),

                        color: Colors.green,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10).r,
                      child: Text(
                        '03:00 PM',
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      border: Border.all(
                          width: 1.w,
                          // color: Color(0xffe5e5e5),
                          color: Colors.red),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10).r,
                      child: Text(
                        '06:00 PM',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      border: Border.all(
                          width: 1,
                          // color: Color(0xffe5e5e5),
                          color: Colors.green),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10).r,
                      child: Text(
                        '09:30 PM',
                        style: TextStyle(color: Colors.green),
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
