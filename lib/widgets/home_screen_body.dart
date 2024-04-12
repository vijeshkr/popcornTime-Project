import 'package:flutter/material.dart';
import 'package:popcorn_time/widgets/svg_with_title.dart';

import '../constants/app_icons.dart';
import '../constants/apptheme.dart';
import 'home_banner.dart';
import 'home_banner_head.dart';
import 'home_show_model.dart';
import 'movie_model.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: size.width,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SvgWithTitle(
                    imagePath: menus[0].asset,
                    title: menus[0].name,
                    onPressed: 'All'),
                SvgWithTitle(
                    imagePath: menus[1].asset,
                    title: menus[1].name,
                    onPressed: 'Movies'),
                SvgWithTitle(
                    imagePath: menus[2].asset,
                    title: menus[2].name,
                    onPressed: 'Events'),
                SvgWithTitle(
                    imagePath: menus[3].asset,
                    title: menus[3].name,
                    onPressed: 'Sports'),
                SvgWithTitle(
                    imagePath: menus[4].asset,
                    title: menus[4].name,
                    onPressed: 'Shows'),
              ],
            ),
            Divider(
              thickness: 5,
              color: AppTheme.greyColor,
            ),
            Container(
              height: 225,
              width: size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return MovieModel(
                    title: movies[index].title,
                    like: movies[index].like,
                    bannerUrl: movies[index].bannerUrl,
                  );
                },
              ),
            ),
            Divider(
              thickness: 5,
              color: AppTheme.greyColor,
            ),
            HomeBannerHead(
              asset: eventsIcon,
              title: 'Events',
            ),
            HomeBanner(
              image: edSheeran,
              bannerTitle: edSheeranTitle,
            ),
            const Divider(
              thickness: 5,
              color: AppTheme.greyColor,
            ),
            Row(
              children: [
                HomeShows(
                  show: show1,
                  showTitle: showTitle1,
                ),
                HomeShows(
                  show: show2,
                  showTitle: showTitle2,
                ),
              ],
            ),
            Divider(
              thickness: 5,
              color: AppTheme.greyColor,
            ),
            HomeBannerHead(
              asset: sportsIcon,
              title: 'Sports',
            ),
            HomeBanner(
              image: kbfc,
              bannerTitle: kbfcTitle,
            ),
            const Divider(
              thickness: 5,
              color: AppTheme.greyColor,
            ),
          ],
        ),
      ),
    );
  }
}
