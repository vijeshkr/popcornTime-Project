import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import '../constants/app_icons.dart';
import '../constants/apptheme.dart';
import '../widgets/home_banner.dart';
import '../widgets/home_banner_head.dart';
import '../widgets/movie_model.dart';
import '../widgets/svg_with_title.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int indexNum = 0;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: AppTheme.statusBar));
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // backgroundColor: AppTheme.appBarColor,
          backgroundColor: AppTheme.greyColor,
          toolbarHeight: 70,
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'It All Starts Here',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Text(
                    'Ernakulam',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppTheme.splash,
                    ),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: AppTheme.splash,
                  )
                ],
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.qr_code_scanner,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              width: 10,
            )
          ],
        ),
        body: Container(
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
                HomeBannerHead(asset: eventsIcon,title: 'Events',),
                HomeBanner(image: edSheeran,bannerTitle: edSheeranTitle,),
                const Divider(
                  thickness: 5,
                  color: AppTheme.greyColor,
                ),


                HomeBannerHead(asset: sportsIcon,title: 'Sports',),
                HomeBanner(image: kbfc,bannerTitle: kbfcTitle,),

                const Divider(
                  thickness: 5,
                  color: AppTheme.greyColor,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: indexNum,
          onTap: (int index) {
            setState(() {
              indexNum = index;
            });
          },
          iconSize: 30,
          showUnselectedLabels: true,
          selectedItemColor: Colors.redAccent,
          items: const [
            BottomNavigationBarItem(
              backgroundColor: AppTheme.statusBar,
              icon: Icon(Icons.cottage_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              backgroundColor: AppTheme.statusBar,
              icon: Icon(Icons.movie_creation_outlined),
              label: 'Movies',
            ),
            BottomNavigationBarItem(
              backgroundColor: AppTheme.statusBar,
              icon: Icon(Icons.event),
              label: 'Events',
            ),
            BottomNavigationBarItem(
              backgroundColor: AppTheme.statusBar,
              icon: Icon(Icons.person_2_outlined),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}



