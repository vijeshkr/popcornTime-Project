import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/apptheme.dart';
import '../widgets/theatre_time.dart';

List? theatreNames;

class TheatreSelectionScreen extends StatelessWidget {
  final String movieName;


   TheatreSelectionScreen({Key? key, required this.movieName,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var pickedDate = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.greyColor,
        title: Text(
          '$movieName',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(100.0.h),
          child: Container(
            padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
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
                color: Colors.black,
              ),
              onDateChange: (selectedDate) {
                pickedDate = selectedDate;
                print(pickedDate);
              },
            ),
          ),
        ),
      ),
      body: theatreNames != null
          ? SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: Color(0xfff5f5fa),
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: _buildTheatreTimeWidgets(),
          ),
        ),
      )
          : Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Text('Unfortunately , there are currently no shows available in your area.',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildTheatreTimeWidgets() {
    List<Widget> theatreWidgets = [];
      for (String theatreName in theatreNames!) {
        theatreWidgets.addAll([
          SizedBox(height: 10.h),
          TheatreTime(theatreName: theatreName),
        ]);
      }
    return theatreWidgets;
  }

}
