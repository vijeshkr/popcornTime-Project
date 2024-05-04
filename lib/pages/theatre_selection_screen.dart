import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/apptheme.dart';
import '../widgets/theatre_time.dart';
import 'package:intl/intl.dart';

List? theatreNames;

class TheatreSelectionScreen extends StatefulWidget {
  final String movieName;
  final String movieImage;

  TheatreSelectionScreen(
      {Key? key, required this.movieName, required this.movieImage})
      : super(key: key);

  @override
  State<TheatreSelectionScreen> createState() => _TheatreSelectionScreenState();
}

class _TheatreSelectionScreenState extends State<TheatreSelectionScreen> {
  dynamic pickedDate = DateFormat('dd MMM yyyy').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.movieName,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(110.0.h),
          child: Container(
            padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
            child: DatePicker(
              DateTime.now(),
              height: 90.h,
              width: 75.h,
              initialSelectedDate: DateTime.now(),
              selectionColor: AppTheme.splash,
              selectedTextColor: Colors.white,
              dateTextStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
              onDateChange: (selectedDate) {
                setState(() {
                  pickedDate = DateFormat('dd MMM yyyy').format(selectedDate);
                });
              },
            ),
          ),
        ),
      ),
      body: theatreNames != null
          ? SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                color: const Color(0xfff5f5fa),
                padding: const EdgeInsets.all(20).h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: _buildTheatreTimeWidgets(),
                ),
              ),
            )
          : SizedBox(
              width: double.maxFinite,
              height: double.maxFinite,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(15).h,
                  child: const Text(
                    'Unfortunately , there are currently no shows available in your area.',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
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
        TheatreTime(
          theatreName: theatreName,
          movieName: widget.movieName,
          selectedDate: pickedDate,
          movieImage: widget.movieImage,
        ),
      ]);
    }
    return theatreWidgets;
  }
}
