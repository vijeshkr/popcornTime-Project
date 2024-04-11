import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../constants/apptheme.dart';
import '../widgets/theatre_time.dart';

class TheatreSelectionScreen extends StatelessWidget {
  TheatreSelectionScreen({super.key});

  final DateFormat format = DateFormat('dd MMM');
  final now = DateTime.now();
  String selectedDate = DateFormat('dd MMM').format(DateTime.now(),);
  String selectedLanguage = 'MALAYALAM';
  String selectedScreen = '2D';

  @override
  Widget build(BuildContext context) {
    final todayDate = format.format(now);
    final tomorrowDate = format.format(
      DateTime(now.year, now.month, now.day + 1),
    );
    String text ="";

    if(selectedDate == todayDate){
      text = 'Today, ';
    }else if(selectedDate == tomorrowDate){
      text = 'Tomorrow, ';
    }

    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.all(0),
        height: 70,
        color: AppTheme.appBarColor,
        elevation: 0,
        child: Container(
          width: double.maxFinite,
          height: AppBar().preferredSize.height,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: ListTile(
                  onTap: (){},
                  horizontalTitleGap: 5,
                  leading: Icon(Icons.calendar_month,
                  color: Colors.white,),
                  title: Text(
                    '$text$selectedDate',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_down,
                  color: Colors.white,),
                ),
              ),
              Expanded(
                child: ListTile(
                  onTap: (){},
                  horizontalTitleGap: 5,
                  title: Text(
                    '$selectedLanguage $selectedScreen',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_down,
                    color: Colors.white,),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: AppTheme.greyColor,
        title: Text(
          'Premam',
          style: TextStyle(fontWeight: FontWeight.w500),
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
