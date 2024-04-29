import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:popcorn_time/constants/apptheme.dart';
import '../constants/app_icons.dart';

class SportsBookingScreen extends StatelessWidget {
  String eventTitle;
  String eventCover;
  String item;
  String dateTime;
  String artist;
  String location;
  String category;
  SportsBookingScreen({
    super.key,
    required this.eventTitle,
    required this.eventCover,
    required this.item,
    required this.dateTime,
    required this.artist,
    required this.location,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: AppTheme.statusBar,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
            ),
            expandedHeight: item == 'Cricket' ? 400.h : 220.h ,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      item == 'Cricket' ? cricketStaduim : footballStaduim,
                      // eventCover,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              color: Color(0xfff5f5fa),
              padding: const EdgeInsets.all(20).r,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.white,
                    width: double.maxFinite,
                    padding: EdgeInsets.all(20).r,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          eventTitle,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18.sp,
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          location,
                          style: TextStyle(color: Colors.black45),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Row(
                          children: [
                            Text(
                              item,
                              style: TextStyle(color: Colors.black45),
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            Text(
                              artist,
                              style: TextStyle(color: Colors.black45),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          dateTime,
                          style: TextStyle(color: Colors.black45),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  item == 'Cricket' ? cricketPrices : footBallPrices ,

                  SizedBox(
                    height: 10.h,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

var footBallPrices = Container(
  width: double.maxFinite,
  color: Colors.white,
  padding: const EdgeInsets.all(20).r,
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ListTile(
        title: Text(
          'West Upper : \u{20B9} ${westUpper}',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      Divider(thickness: 1.w,color: Colors.grey,),
      ListTile(
        title: Text(
          'East Upper : \u{20B9} ${eastUpper}',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      Divider(thickness: 1.w,color: Colors.grey,),
      ListTile(
        title: Text(
          'East Lower : \u{20B9} ${eastLower}',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      Divider(thickness: 1.w,color: Colors.grey,),
      ListTile(
        title: Text(
          'North Upper : \u{20B9} ${northUpper}',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      Divider(thickness: 1.w,color: Colors.grey,),
      ListTile(
        title: Text(
          'North Lower : \u{20B9} ${northLower}',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      Divider(thickness: 1.w,color: Colors.grey,),
      ListTile(
        title: Text(
          'South Upper : \u{20B9} ${southUpper}',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      Divider(thickness: 1.w,color: Colors.grey,),
      ListTile(
        title: Text(
          'South Lower : \u{20B9} ${southLower}',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    ],
  ),
);

var cricketPrices = Container(
  width: double.maxFinite,
  color: Colors.white,
  padding: const EdgeInsets.all(20).r,
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ListTile(
        title: Text(
          'Members Enclosure : \u{20B9} ${membersEnclosure}',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      Divider(thickness: 1.w,color: Colors.grey,),
      ListTile(
        title: Text(
          'Corporate Box : \u{20B9} ${corporateBox}',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      Divider(thickness: 1.w,color: Colors.grey,),
      ListTile(
        title: Text(
          'Diamond Box : \u{20B9} ${diamondBox}',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      Divider(thickness: 1.w,color: Colors.grey,),
      ListTile(
        title: Text(
          'Grand Stand : \u{20B9} ${grandStand}',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      Divider(thickness: 1.w,color: Colors.grey,),
      ListTile(
        title: Text(
          'East Stand : \u{20B9} ${eastStand}',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      Divider(thickness: 1.w,color: Colors.grey,),
      ListTile(
        title: Text(
          'West Stand : \u{20B9} ${westStand}',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      Divider(thickness: 1.w,color: Colors.grey,),
      ListTile(
        title: Text(
          'North Stand : \u{20B9} ${northStand}',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    ],
  ),
);
