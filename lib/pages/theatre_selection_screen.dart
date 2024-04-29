import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/apptheme.dart';
import '../widgets/theatre_time.dart';

class TheatreSelectionScreen extends StatelessWidget {
  TheatreSelectionScreen({super.key});
  var customselectedDate;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.greyColor,
        title: Text(
          'Premam',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(100.0.h),
            child: Container(
              padding: const EdgeInsets.only(top: 10,bottom: 10).r,
              child: DatePicker(
                DateTime.now(),
                height: 90.h,
                width: 75.w,
                initialSelectedDate: DateTime.now(),
                selectionColor: AppTheme.splash,
                selectedTextColor: Colors.white,
                dateTextStyle: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.black
                ),
                onDateChange: (selectedDate){
                  customselectedDate = selectedDate;
                },
              ),
            ),
        
    ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: Color(0xfff5f5fa),
          padding: EdgeInsets.all(20).r,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.h,
              ),
              TheatreTime(theatreName: 'PVR: Lulu, Kochi'),
              SizedBox(
                height: 10.h,
              ),
              TheatreTime(theatreName: 'PVR: Oberon Mall, Kochi'),
              SizedBox(
                height: 10.h,
              ),
              TheatreTime(theatreName: 'Shenoys: Kochi'),
              SizedBox(
                height: 10.h,
              ),
              TheatreTime(theatreName: 'Sridar: Marine Drive, Kochi'),
              SizedBox(
                height: 10.h,
              ),
              TheatreTime(theatreName: 'Vanitha Cineplex, Edappally'),
              SizedBox(
                height: 10.h,
              ),
              TheatreTime(theatreName: 'Dharsana Cinema Complex: Piravom'),
            ],
          ),
        ),
      ),
    );
  }
}
