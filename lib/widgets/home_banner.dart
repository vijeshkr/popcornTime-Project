import 'package:flutter/material.dart';

import '../pages/notifications.dart';

class HomeBanner extends StatelessWidget {
  final String image;
  final String bannerTitle;
  const HomeBanner({
    required this.image,
    required this.bannerTitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                image,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              bannerTitle,
              style: TextStyle(
                  fontSize: 17, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
