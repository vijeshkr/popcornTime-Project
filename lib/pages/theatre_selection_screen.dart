import 'package:flutter/material.dart';

import '../constants/apptheme.dart';
import '../widgets/theatre_time.dart';

class TheatreSelectionScreen extends StatelessWidget {
  const TheatreSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
