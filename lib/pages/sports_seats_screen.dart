import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:popcorn_time/constants/apptheme.dart';
import 'package:popcorn_time/models/sports_seat_botttom.dart';
import '../constants/app_icons.dart';

var seatBlock;

class SportsBookingScreen extends StatelessWidget {
  String eventTitle;
  String imageUrl;
  String eventCover;
  String item;
  String dateTime;
  String artist;
  String location;
  String category;
  SportsBookingScreen({
    super.key,
    required this.eventTitle,
    required this.imageUrl,
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
            expandedHeight: item == 'Cricket' ? 400.h : 220.h,
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
                  item == 'Cricket'
                      ? cricketPrices(
                          context, eventTitle, imageUrl, dateTime, location)
                      : footBallPrices(
                          context, eventTitle, imageUrl, dateTime, location),
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

Widget footBallPrices(BuildContext context, String eventTitle, String imageUrl,
    String dateTime, String location) {
  return Container(
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
          onTap: () {
            seatBlock = 'West Upper';
            double seatPrice = westUpper;
            showModalBottomSheet(
                context: context,
                builder: (_) => SportsSeatBottom(
                      seatBlock: seatBlock,
                      seatPrice: seatPrice,
                      confirmTitle: eventTitle,
                      confirmImage: imageUrl,
                      confirmDate: dateTime,
                      confirmPlace: location,
                    ),
                constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 0.35));
          },
        ),
        Divider(
          thickness: 1.w,
          color: Colors.grey,
        ),
        ListTile(
          title: Text(
            'East Upper : \u{20B9} ${eastUpper}',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          onTap: () {
            seatBlock = 'East Upper';
            double seatPrice = eastUpper;
            showModalBottomSheet(
                context: context,
                builder: (_) => SportsSeatBottom(
                      seatBlock: seatBlock,
                      seatPrice: seatPrice,
                      confirmTitle: eventTitle,
                      confirmImage: imageUrl,
                      confirmDate: dateTime,
                      confirmPlace: location,
                    ),
                constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 0.35));
          },
        ),
        Divider(
          thickness: 1.w,
          color: Colors.grey,
        ),
        ListTile(
          title: Text(
            'East Lower : \u{20B9} ${eastLower}',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          onTap: () {
            seatBlock = 'East Lower';
            double seatPrice = eastLower;
            showModalBottomSheet(
                context: context,
                builder: (_) => SportsSeatBottom(
                      seatBlock: seatBlock,
                      seatPrice: seatPrice,
                      confirmTitle: eventTitle,
                      confirmImage: imageUrl,
                      confirmDate: dateTime,
                      confirmPlace: location,
                    ),
                constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 0.35));
          },
        ),
        Divider(
          thickness: 1.w,
          color: Colors.grey,
        ),
        ListTile(
          title: Text(
            'North Upper : \u{20B9} ${northUpper}',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          onTap: () {
            seatBlock = 'North Upper';
            double seatPrice = northUpper;
            showModalBottomSheet(
                context: context,
                builder: (_) => SportsSeatBottom(
                      seatBlock: seatBlock,
                      seatPrice: seatPrice,
                      confirmTitle: eventTitle,
                      confirmImage: imageUrl,
                      confirmDate: dateTime,
                      confirmPlace: location,
                    ),
                constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 0.35));
          },
        ),
        Divider(
          thickness: 1.w,
          color: Colors.grey,
        ),
        ListTile(
          title: Text(
            'North Lower : \u{20B9} ${northLower}',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          onTap: () {
            seatBlock = 'North Lower';
            double seatPrice = northLower;
            showModalBottomSheet(
                context: context,
                builder: (_) => SportsSeatBottom(
                      seatBlock: seatBlock,
                      seatPrice: seatPrice,
                      confirmTitle: eventTitle,
                      confirmImage: imageUrl,
                      confirmDate: dateTime,
                      confirmPlace: location,
                    ),
                constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 0.35));
          },
        ),
        Divider(
          thickness: 1.w,
          color: Colors.grey,
        ),
        ListTile(
          title: Text(
            'South Upper : \u{20B9} ${southUpper}',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          onTap: () {
            seatBlock = 'South Upper';
            double seatPrice = southUpper;
            showModalBottomSheet(
                context: context,
                builder: (_) => SportsSeatBottom(
                      seatBlock: seatBlock,
                      seatPrice: seatPrice,
                      confirmTitle: eventTitle,
                      confirmImage: imageUrl,
                      confirmDate: dateTime,
                      confirmPlace: location,
                    ),
                constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 0.35));
          },
        ),
        Divider(
          thickness: 1.w,
          color: Colors.grey,
        ),
        ListTile(
          title: Text(
            'South Lower : \u{20B9} ${southLower}',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          onTap: () {
            seatBlock = 'South Lower';
            double seatPrice = southLower;
            showModalBottomSheet(
                context: context,
                builder: (_) => SportsSeatBottom(
                      seatBlock: seatBlock,
                      seatPrice: seatPrice,
                      confirmTitle: eventTitle,
                      confirmImage: imageUrl,
                      confirmDate: dateTime,
                      confirmPlace: location,
                    ),
                constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 0.35));
          },
        ),
      ],
    ),
  );
}

Widget cricketPrices(BuildContext context, String eventTitle, String imageUrl,
    String dateTime, String location) {
  return Container(
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
          onTap: () {
            seatBlock = 'Members Enclosure';
            double seatPrice = membersEnclosure;
            showModalBottomSheet(
                context: context,
                builder: (_) => SportsSeatBottom(
                      seatBlock: seatBlock,
                      seatPrice: seatPrice,
                      confirmTitle: eventTitle,
                      confirmImage: imageUrl,
                      confirmDate: dateTime,
                      confirmPlace: location,
                    ),
                constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 0.35));
          },
        ),
        Divider(
          thickness: 1.w,
          color: Colors.grey,
        ),
        ListTile(
          title: Text(
            'Corporate Box : \u{20B9} ${corporateBox}',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          onTap: () {
            seatBlock = 'Corporate Box';
            double seatPrice = corporateBox;
            showModalBottomSheet(
                context: context,
                builder: (_) => SportsSeatBottom(
                      seatBlock: seatBlock,
                      seatPrice: seatPrice,
                      confirmTitle: eventTitle,
                      confirmImage: imageUrl,
                      confirmDate: dateTime,
                      confirmPlace: location,
                    ),
                constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 0.35));
          },
        ),
        Divider(
          thickness: 1.w,
          color: Colors.grey,
        ),
        ListTile(
          title: Text(
            'Diamond Box : \u{20B9} ${diamondBox}',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          onTap: () {
            seatBlock = 'Diamond Box';
            double seatPrice = diamondBox;
            showModalBottomSheet(
                context: context,
                builder: (_) => SportsSeatBottom(
                      seatBlock: seatBlock,
                      seatPrice: seatPrice,
                      confirmTitle: eventTitle,
                      confirmImage: imageUrl,
                      confirmDate: dateTime,
                      confirmPlace: location,
                    ),
                constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 0.35));
          },
        ),
        Divider(
          thickness: 1.w,
          color: Colors.grey,
        ),
        ListTile(
          title: Text(
            'Grand Stand : \u{20B9} ${grandStand}',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          onTap: () {
            seatBlock = 'Grand Stand';
            double seatPrice = grandStand;
            showModalBottomSheet(
                context: context,
                builder: (_) => SportsSeatBottom(
                      seatBlock: seatBlock,
                      seatPrice: seatPrice,
                      confirmTitle: eventTitle,
                      confirmImage: imageUrl,
                      confirmDate: dateTime,
                      confirmPlace: location,
                    ),
                constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 0.35));
          },
        ),
        Divider(
          thickness: 1.w,
          color: Colors.grey,
        ),
        ListTile(
          title: Text(
            'East Stand : \u{20B9} ${eastStand}',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          onTap: () {
            seatBlock = 'East Stand';
            double seatPrice = eastStand;
            showModalBottomSheet(
                context: context,
                builder: (_) => SportsSeatBottom(
                      seatBlock: seatBlock,
                      seatPrice: seatPrice,
                      confirmTitle: eventTitle,
                      confirmImage: imageUrl,
                      confirmDate: dateTime,
                      confirmPlace: location,
                    ),
                constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 0.35));
          },
        ),
        Divider(
          thickness: 1.w,
          color: Colors.grey,
        ),
        ListTile(
          title: Text(
            'West Stand : \u{20B9} ${westStand}',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          onTap: () {
            seatBlock = 'West Stand';
            double seatPrice = westStand;
            showModalBottomSheet(
                context: context,
                builder: (_) => SportsSeatBottom(
                      seatBlock: seatBlock,
                      seatPrice: seatPrice,
                      confirmTitle: eventTitle,
                      confirmImage: imageUrl,
                      confirmDate: dateTime,
                      confirmPlace: location,
                    ),
                constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 0.35));
          },
        ),
        Divider(
          thickness: 1.w,
          color: Colors.grey,
        ),
        ListTile(
          title: Text(
            'North Stand : \u{20B9} ${northStand}',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          onTap: () {
            seatBlock = 'North Stand';
            double seatPrice = northStand;
            showModalBottomSheet(
                context: context,
                builder: (_) => SportsSeatBottom(
                      seatBlock: seatBlock,
                      seatPrice: seatPrice,
                      confirmTitle: eventTitle,
                      confirmImage: imageUrl,
                      confirmDate: dateTime,
                      confirmPlace: location,
                    ),
                constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 0.35));
          },
        ),
      ],
    ),
  );
}
