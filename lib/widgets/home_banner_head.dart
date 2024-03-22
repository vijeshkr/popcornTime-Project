import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/apptheme.dart';

class HomeBannerHead extends StatelessWidget {
  final String asset;
  final String title;

  const HomeBannerHead({
    super.key,
    required this.asset,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20),
      child: Row(
        children: [
          SvgPicture.asset(
            asset,
            color: Colors.black.withOpacity(0.8),
            height: 18,
            width: 18,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            title.toUpperCase(),
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black.withOpacity(0.8)),
          ),
          const Spacer(),
          TextButton(
            onPressed: () {},
            child: const Text(
              "View All",
              style: TextStyle(color: AppTheme.splash),
            ),
          ),
        ],
      ),
    );
  }
}