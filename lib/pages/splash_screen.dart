import 'dart:async';
import 'package:flutter/material.dart';
import 'package:popcorn_time/pages/login_screen.dart';
import '../constants/apptheme.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/assets.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(milliseconds: 2500),
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
            width: 250,
          ),
          Text(
            'popcorn TIME',
            style: GoogleFonts.nunito(
              textStyle: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const CircularProgressIndicator(
            color: Colors.grey,
            strokeWidth: 3,
            strokeAlign: 3,
          ),
        ]),
      ),
    );
  }
}
