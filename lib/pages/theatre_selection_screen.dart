import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
          preferredSize: Size.fromHeight(100.0),
            child: Container(
              padding: const EdgeInsets.only(top: 10,bottom: 10),
              child: DatePicker(
                DateTime.now(),
                height: 90,
                width: 75,
                initialSelectedDate: DateTime.now(),
                selectionColor: AppTheme.splash,
                selectedTextColor: Colors.white,
                dateTextStyle: TextStyle(
                  fontSize: 20,
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
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              TheatreTime(theatreName: 'PVR: Lulu, Kochi'),
              SizedBox(
                height: 10,
              ),
              TheatreTime(theatreName: 'PVR: Oberon Mall, Kochi'),
              SizedBox(
                height: 10,
              ),
              TheatreTime(theatreName: 'Shenoys: Kochi'),
              SizedBox(
                height: 10,
              ),
              TheatreTime(theatreName: 'Sridar: Marine Drive, Kochi'),
              SizedBox(
                height: 10,
              ),
              TheatreTime(theatreName: 'Vanitha Cineplex, Edappally'),
              SizedBox(
                height: 10,
              ),
              TheatreTime(theatreName: 'Dharsana Cinema Complex: Piravom'),
            ],
          ),
        ),
      ),
    );
  }
}
