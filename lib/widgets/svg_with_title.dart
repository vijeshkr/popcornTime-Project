import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants/apptheme.dart';

class SvgWithTitle extends StatelessWidget {
  final String imagePath;
  final String title;
  final String onPressed;

  SvgWithTitle({
    required this.imagePath,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print(onPressed);
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 10, left: 15.0, right: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                imagePath,
                width: 35, // Adjust width as needed
                height: 35,
                // color: AppTheme.splash,// Adjust height as needed
              ),
            ),
            SizedBox(height: 5), // Add spacing between image and title
            Text(
              title,
              style: TextStyle(
                  color: Colors.black
                      .withOpacity(0.6) // Adjust font weight as needed
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
