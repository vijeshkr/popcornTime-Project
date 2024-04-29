import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:popcorn_time/pages/login_screen.dart';
import '../constants/apptheme.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/assets.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(milliseconds: 3000),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => LoginScreen(),
        ),
      ),
    );
    return Scaffold(
      backgroundColor: AppTheme.splash,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            Assets.logo,
            width: 250.w,
          ),
          Text(
            'popcorn TIME',
            style: GoogleFonts.nunito(
              textStyle:  TextStyle(
                fontSize: 40.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
           SizedBox(
            height: 50.h,
          ),
          LoadingAnimationWidget.staggeredDotsWave(
            color: Colors.white,
            size: 50.r,
          ),
        ]),
      ),
    );
  }
}
