import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:popcorn_time/pages/splash_screen.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: (BuildContext context , Widget? widget) {
          return const MaterialApp(
             home: SplashScreen(),
            debugShowCheckedModeBanner: false,
          );
        },
      designSize: const Size(393, 808),
    );
  }
}
