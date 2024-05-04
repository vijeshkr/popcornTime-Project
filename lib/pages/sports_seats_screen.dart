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
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
              ),
              expandedHeight: item == 'Cricket' ? 480.h : 260.h,
              flexibleSpace: FlexibleSpaceBar(
                background: Padding(
                  padding: const EdgeInsets.all(10).h,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10).r,
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
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.all(20).h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: AppTheme.lightblue,
                        borderRadius: BorderRadius.circular(10).r
                      ),
                      width: double.maxFinite,
                      padding: const EdgeInsets.all(20).h,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            eventTitle,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            location,
                            style: const TextStyle(color: Colors.black45),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Row(
                            children: [
                              Text(
                                item,
                                style: const TextStyle(color: Colors.black45),
                              ),
                              SizedBox(
                                width: 15.h,
                              ),
                              Text(
                                artist,
                                style: const TextStyle(color: Colors.black45),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            dateTime,
                            style: const TextStyle(color: Colors.black45),
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
      ),
    );
  }
}

Widget footBallPrices(BuildContext context, String eventTitle, String imageUrl,
    String dateTime, String location) {
  return Container(
    width: double.maxFinite,
    color: Colors.white,
    padding: const EdgeInsets.all(20).h,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Text(
            'West Upper : \u{20B9} $westUpper',
            style: const TextStyle(fontWeight: FontWeight.bold),
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
        const Divider(
          thickness: 1,
          color: Colors.grey,
        ),
        ListTile(
          title: Text(
            'East Upper : \u{20B9} $eastUpper',
            style: const TextStyle(fontWeight: FontWeight.bold),
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
        const Divider(
          thickness: 1,
          color: Colors.grey,
        ),
        ListTile(
          title: Text(
            'East Lower : \u{20B9} $eastLower',
            style: const TextStyle(fontWeight: FontWeight.bold),
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
        const Divider(
          thickness: 1,
          color: Colors.grey,
        ),
        ListTile(
          title: Text(
            'North Upper : \u{20B9} $northUpper',
            style: const TextStyle(fontWeight: FontWeight.bold),
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
        const Divider(
          thickness: 1,
          color: Colors.grey,
        ),
        ListTile(
          title: Text(
            'North Lower : \u{20B9} $northLower',
            style: const TextStyle(fontWeight: FontWeight.bold),
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
        const Divider(
          thickness: 1,
          color: Colors.grey,
        ),
        ListTile(
          title: Text(
            'South Upper : \u{20B9} $southUpper',
            style: const TextStyle(fontWeight: FontWeight.bold),
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
        const Divider(
          thickness: 1,
          color: Colors.grey,
        ),
        ListTile(
          title: Text(
            'South Lower : \u{20B9} $southLower',
            style: const TextStyle(fontWeight: FontWeight.bold),
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
    padding: const EdgeInsets.all(20).h,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Text(
            'Members Enclosure : \u{20B9} $membersEnclosure',
            style: const TextStyle(fontWeight: FontWeight.bold),
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
        const Divider(
          thickness: 1,
          color: Colors.grey,
        ),
        ListTile(
          title: Text(
            'Corporate Box : \u{20B9} $corporateBox',
            style: const TextStyle(fontWeight: FontWeight.bold),
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
        const Divider(
          thickness: 1,
          color: Colors.grey,
        ),
        ListTile(
          title: Text(
            'Diamond Box : \u{20B9} $diamondBox',
            style: const TextStyle(fontWeight: FontWeight.bold),
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
        const Divider(
          thickness: 1,
          color: Colors.grey,
        ),
        ListTile(
          title: Text(
            'Grand Stand : \u{20B9} $grandStand',
            style: const TextStyle(fontWeight: FontWeight.bold),
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
        const Divider(
          thickness: 1,
          color: Colors.grey,
        ),
        ListTile(
          title: Text(
            'East Stand : \u{20B9} $eastStand',
            style: const TextStyle(fontWeight: FontWeight.bold),
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
        const Divider(
          thickness: 1,
          color: Colors.grey,
        ),
        ListTile(
          title: Text(
            'West Stand : \u{20B9} $westStand',
            style: const TextStyle(fontWeight: FontWeight.bold),
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
        const Divider(
          thickness: 1,
          color: Colors.grey,
        ),
        ListTile(
          title: Text(
            'North Stand : \u{20B9} $northStand',
            style: const TextStyle(fontWeight: FontWeight.bold),
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
